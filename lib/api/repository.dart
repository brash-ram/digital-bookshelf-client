import 'dart:async';
import 'dart:math' as math;

import 'package:digital_bookshelf_client/api/cache_dates.dart';
import 'package:digital_bookshelf_client/api/refs_counter.dart';
import 'package:digital_bookshelf_client/logging.dart';
import 'package:flutter/foundation.dart';
import 'package:lru_cache/lru_cache.dart';
import 'package:rxdart/rxdart.dart';


typedef CacheId = (Type type, int id);

class Repository {

  static final _random = math.Random(1337);

  static const cacheValidity = Duration(seconds: 1);
  static const useDelayedRemoval = true;

  final cache = LruWeakCache<CacheId, Object>(10);
  final cacheDates = CacheDates(); 
  final controllers = <CacheId, BehaviorSubject<Object>>{};
  final controllersListenersCounter = RefsCounter<BehaviorSubject<Object>>();
  final requestsLocks = <CacheId, Future<void>>{};
  // Delayed removals offset cleanup work at some near future time
  final delayedRemovals = Expando<Timer>();

  Stream<T> _prepareDataStream<T extends Object>(BehaviorSubject<T> subject, CacheId id) =>
    subject.stream.transform(
      StreamTransformer(
        (stream, cancelOnError) {
          final controller = StreamController<T>(sync: true);
          controller.onListen = () {
            controllersListenersCounter.increase(subject);
            final subscription = stream.listen(
              controller.add,
              onError: controller.addError,
              onDone: controller.close,
              cancelOnError: cancelOnError,
            );
            controller
              ..onPause = subscription.pause
              ..onResume = subscription.resume
              ..onCancel = () async {
                if (controllersListenersCounter.decrease(subject) == 0) {
                  await _scheduleRemoveUnusedController(subject, id);
                }
                return subscription.cancel();
              };
          };
          return controller.stream.listen(null);
        },
      ),
    );
  
  FutureOr<void> _scheduleRemoveUnusedController<T extends Object>(BehaviorSubject<T> controller, CacheId id) {
    if (!useDelayedRemoval) {
      return _removeUnusedController(controller, id);
    }

    if (delayedRemovals[controller] != null) {
      return null;
    }

    final delay = Duration(milliseconds: 800 + _random.nextInt(200));
    delayedRemovals[controller] = Timer(
      delay,
      () async => _removeUnusedController(controller, id),
    );
  }

  Future<void> _removeUnusedController<T extends Object>(BehaviorSubject<T> controller, CacheId id) async {
    if (useDelayedRemoval) {
      // check if removal is canceled
      if (delayedRemovals[controller] == null) {
        return;
      }

      delayedRemovals[controller] = null;
    }
    assert(controllers[id] == controller, 'Requested removal of unknown controller.');
    if (controllers[id] == controller) {
      controllers.remove(id);
    }
    talker.verbose('ApiRepository: Removed controller with id $id');

    assert(!controller.isClosed, 'Requested removal of already closed controller.');
    await controller.close();
  }

  /// Creates data stream from wrapped fetch call.
  Stream<T> createDataStream<T extends Object>(
    Future<void> Function(int id) wrappedFetchCall,
    int id,
  ) {
    final cacheId = (T, id);
    final controller = controllers.putIfAbsent(
      cacheId,
      () {
        talker.verbose('ApiRepository: Created controller with id $id');
        return BehaviorSubject<T>();
      },
    ) as BehaviorSubject<T>;
    if (useDelayedRemoval) {
      delayedRemovals[controller]?.cancel();
      delayedRemovals[controller] = null;
    }

    final cached = cache[cacheId] as T?;
    if (kDebugMode && cached != null && controller.hasValue) {
      assert(controller.valueOrNull == cached, 'Cached value diverges with controller cache');
    }

    if (cached == null || DateTime.now().difference(cacheDates.get(cached)) > cacheValidity) {
      unawaited(wrappedFetchCall.call(id));
    } else if (!controller.hasValue) {
      controller.add(cached);
    }

    return _prepareDataStream(controller, cacheId);
  }

  /// Wraps request call.
  /// Wrapped call doesn't return data, but instead updates corresponding data
  /// stream.
  Future<void> wrapFetchCall<T extends Object>(
    Future<T> Function(int id) makeRequest,
    int id,
  ) {
    final cacheId = (T, id);
    return requestsLocks.putIfAbsent(
      cacheId,
      () async {
        try {
          _commitObject(id, await makeRequest(id));
        } catch (error, stackTrace) {
          _commitError<T>(id, error, stackTrace);
        } finally {
          unawaited(requestsLocks.remove(cacheId));
        }
      }
    );
  }

  void _commitObject<T extends Object>(int id, T data) {
    final cacheId = (T, id);
    cache[cacheId] = data;
    cacheDates.update(data);
    if (controllers[cacheId] case final controller?) {
      controller.add(data);
    }
  }
  void _commitError<T extends Object>(int id, Object error, [StackTrace? stackTrace]) {
    if (controllers[(T, id)] case final controller?) {
      controller.addError(error, stackTrace);
    } else {
      talker.warning(
        'Error occurred while retrieving data, but target stream have no subscribers',
        error,
        stackTrace,
      );
    }
  }

  Future<bool> sendVoidRequest(Future<void> Function() request) async {
    try {
      await request();
    } catch (e, stackTrace) {
      talker.error('Error on send void request', e, stackTrace);
      return Future.value(false);
    }

    return Future.value(true);
  }
}
