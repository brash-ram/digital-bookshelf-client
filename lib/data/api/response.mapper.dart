// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'response.dart';

class ResponseMapper extends ClassMapperBase<Response> {
  ResponseMapper._();

  static ResponseMapper? _instance;
  static ResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseMapper._());
      ResponseEmptyMapper.ensureInitialized();
      ResponseErrorMapper.ensureInitialized();
      ResponseInvalidMapper.ensureInitialized();
      ResponseOkMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Response';
  @override
  Function get typeFactory => <T>(f) => f<Response<T>>();

  static bool _$isError(Response v) => v.isError;
  static const Field<Response, bool> _f$isError =
      Field('isError', _$isError, key: 'error');

  @override
  final MappableFields<Response> fields = const {
    #isError: _f$isError,
  };

  static Response<T> _instantiate<T>(DecodingData data) {
    throw MapperException.missingConstructor('Response');
  }

  @override
  final Function instantiate = _instantiate;

  static Response<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Response<T>>(map);
  }

  static Response<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<Response<T>>(json);
  }
}

mixin ResponseMappable<T> {
  String toJson();
  Map<String, dynamic> toMap();
  ResponseCopyWith<Response<T>, Response<T>, Response<T>, T> get copyWith;
}

abstract class ResponseCopyWith<$R, $In extends Response<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ResponseCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ResponseEmptyMapper extends SubClassMapperBase<ResponseEmpty> {
  ResponseEmptyMapper._();

  static ResponseEmptyMapper? _instance;
  static ResponseEmptyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseEmptyMapper._());
      ResponseMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ResponseEmpty';
  @override
  Function get typeFactory => <T>(f) => f<ResponseEmpty<T>>();

  static dynamic _$result(ResponseEmpty v) => v.result;
  static dynamic _arg$result<T>(f) => f<T>();
  static const Field<ResponseEmpty, dynamic> _f$result =
      Field('result', _$result, arg: _arg$result);
  static bool _$isEmpty(ResponseEmpty v) => v.isEmpty;
  static const Field<ResponseEmpty, bool> _f$isEmpty =
      Field('isEmpty', _$isEmpty);
  static bool _$isError(ResponseEmpty v) => v.isError;
  static const Field<ResponseEmpty, bool> _f$isError =
      Field('isError', _$isError, key: 'error');

  @override
  final MappableFields<ResponseEmpty> fields = const {
    #result: _f$result,
    #isEmpty: _f$isEmpty,
    #isError: _f$isError,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = ResponseEmpty._checkType;
  @override
  late final ClassMapperBase superMapper = ResponseMapper.ensureInitialized();

  static ResponseEmpty<T> _instantiate<T>(DecodingData data) {
    return ResponseEmpty(
        result: data.dec(_f$result), isEmpty: data.dec(_f$isEmpty));
  }

  @override
  final Function instantiate = _instantiate;

  static ResponseEmpty<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResponseEmpty<T>>(map);
  }

  static ResponseEmpty<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<ResponseEmpty<T>>(json);
  }
}

mixin ResponseEmptyMappable<T> {
  String toJson() {
    return ResponseEmptyMapper.ensureInitialized()
        .encodeJson<ResponseEmpty<T>>(this as ResponseEmpty<T>);
  }

  Map<String, dynamic> toMap() {
    return ResponseEmptyMapper.ensureInitialized()
        .encodeMap<ResponseEmpty<T>>(this as ResponseEmpty<T>);
  }

  ResponseEmptyCopyWith<ResponseEmpty<T>, ResponseEmpty<T>, ResponseEmpty<T>, T>
      get copyWith => _ResponseEmptyCopyWithImpl(
          this as ResponseEmpty<T>, $identity, $identity);
  @override
  String toString() {
    return ResponseEmptyMapper.ensureInitialized()
        .stringifyValue(this as ResponseEmpty<T>);
  }

  @override
  bool operator ==(Object other) {
    return ResponseEmptyMapper.ensureInitialized()
        .equalsValue(this as ResponseEmpty<T>, other);
  }

  @override
  int get hashCode {
    return ResponseEmptyMapper.ensureInitialized()
        .hashValue(this as ResponseEmpty<T>);
  }
}

extension ResponseEmptyValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, ResponseEmpty<T>, $Out> {
  ResponseEmptyCopyWith<$R, ResponseEmpty<T>, $Out, T> get $asResponseEmpty =>
      $base.as((v, t, t2) => _ResponseEmptyCopyWithImpl(v, t, t2));
}

abstract class ResponseEmptyCopyWith<$R, $In extends ResponseEmpty<T>, $Out, T>
    implements ResponseCopyWith<$R, $In, $Out, T> {
  @override
  $R call({T? result, bool? isEmpty});
  ResponseEmptyCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResponseEmptyCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, ResponseEmpty<T>, $Out>
    implements ResponseEmptyCopyWith<$R, ResponseEmpty<T>, $Out, T> {
  _ResponseEmptyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResponseEmpty> $mapper =
      ResponseEmptyMapper.ensureInitialized();
  @override
  $R call({T? result, bool? isEmpty}) => $apply(FieldCopyWithData({
        if (result != null) #result: result,
        if (isEmpty != null) #isEmpty: isEmpty
      }));
  @override
  ResponseEmpty<T> $make(CopyWithData data) => ResponseEmpty(
      result: data.get(#result, or: $value.result),
      isEmpty: data.get(#isEmpty, or: $value.isEmpty));

  @override
  ResponseEmptyCopyWith<$R2, ResponseEmpty<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseEmptyCopyWithImpl($value, $cast, t);
}

class ResponseErrorMapper extends SubClassMapperBase<ResponseError> {
  ResponseErrorMapper._();

  static ResponseErrorMapper? _instance;
  static ResponseErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseErrorMapper._());
      ResponseMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ResponseError';

  static int _$code(ResponseError v) => v.code;
  static const Field<ResponseError, int> _f$code = Field('code', _$code);
  static String _$message(ResponseError v) => v.message;
  static const Field<ResponseError, String> _f$message =
      Field('message', _$message);
  static bool _$isError(ResponseError v) => v.isError;
  static const Field<ResponseError, bool> _f$isError =
      Field('isError', _$isError, key: 'error');

  @override
  final MappableFields<ResponseError> fields = const {
    #code: _f$code,
    #message: _f$message,
    #isError: _f$isError,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = ResponseError._checkType;
  @override
  late final ClassMapperBase superMapper = ResponseMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static ResponseError _instantiate(DecodingData data) {
    return ResponseError(
        code: data.dec(_f$code), message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static ResponseError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResponseError>(map);
  }

  static ResponseError fromJson(String json) {
    return ensureInitialized().decodeJson<ResponseError>(json);
  }
}

mixin ResponseErrorMappable {
  String toJson() {
    return ResponseErrorMapper.ensureInitialized()
        .encodeJson<ResponseError>(this as ResponseError);
  }

  Map<String, dynamic> toMap() {
    return ResponseErrorMapper.ensureInitialized()
        .encodeMap<ResponseError>(this as ResponseError);
  }

  ResponseErrorCopyWith<ResponseError, ResponseError, ResponseError>
      get copyWith => _ResponseErrorCopyWithImpl(
          this as ResponseError, $identity, $identity);
  @override
  String toString() {
    return ResponseErrorMapper.ensureInitialized()
        .stringifyValue(this as ResponseError);
  }

  @override
  bool operator ==(Object other) {
    return ResponseErrorMapper.ensureInitialized()
        .equalsValue(this as ResponseError, other);
  }

  @override
  int get hashCode {
    return ResponseErrorMapper.ensureInitialized()
        .hashValue(this as ResponseError);
  }
}

extension ResponseErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResponseError, $Out> {
  ResponseErrorCopyWith<$R, ResponseError, $Out> get $asResponseError =>
      $base.as((v, t, t2) => _ResponseErrorCopyWithImpl(v, t, t2));
}

abstract class ResponseErrorCopyWith<$R, $In extends ResponseError, $Out>
    implements ResponseCopyWith<$R, $In, $Out, Never> {
  @override
  $R call({int? code, String? message});
  ResponseErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResponseErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResponseError, $Out>
    implements ResponseErrorCopyWith<$R, ResponseError, $Out> {
  _ResponseErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResponseError> $mapper =
      ResponseErrorMapper.ensureInitialized();
  @override
  $R call({int? code, String? message}) => $apply(FieldCopyWithData(
      {if (code != null) #code: code, if (message != null) #message: message}));
  @override
  ResponseError $make(CopyWithData data) => ResponseError(
      code: data.get(#code, or: $value.code),
      message: data.get(#message, or: $value.message));

  @override
  ResponseErrorCopyWith<$R2, ResponseError, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseErrorCopyWithImpl($value, $cast, t);
}

class ResponseInvalidMapper extends SubClassMapperBase<ResponseInvalid> {
  ResponseInvalidMapper._();

  static ResponseInvalidMapper? _instance;
  static ResponseInvalidMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseInvalidMapper._());
      ResponseMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ResponseInvalid';

  static Object? _$rawResponse(ResponseInvalid v) => v.rawResponse;
  static const Field<ResponseInvalid, Object> _f$rawResponse =
      Field('rawResponse', _$rawResponse, key: 'raw_response', opt: true);
  static bool _$isError(ResponseInvalid v) => v.isError;
  static const Field<ResponseInvalid, bool> _f$isError =
      Field('isError', _$isError, key: 'error');

  @override
  final MappableFields<ResponseInvalid> fields = const {
    #rawResponse: _f$rawResponse,
    #isError: _f$isError,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MappableClass.useAsDefault;
  @override
  late final ClassMapperBase superMapper = ResponseMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  @override
  final MappingHook hook = const _ResponseInvalidHook();
  static ResponseInvalid _instantiate(DecodingData data) {
    return ResponseInvalid(data.dec(_f$rawResponse));
  }

  @override
  final Function instantiate = _instantiate;

  static ResponseInvalid fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResponseInvalid>(map);
  }

  static ResponseInvalid fromJson(String json) {
    return ensureInitialized().decodeJson<ResponseInvalid>(json);
  }
}

mixin ResponseInvalidMappable {
  String toJson() {
    return ResponseInvalidMapper.ensureInitialized()
        .encodeJson<ResponseInvalid>(this as ResponseInvalid);
  }

  Map<String, dynamic> toMap() {
    return ResponseInvalidMapper.ensureInitialized()
        .encodeMap<ResponseInvalid>(this as ResponseInvalid);
  }

  ResponseInvalidCopyWith<ResponseInvalid, ResponseInvalid, ResponseInvalid>
      get copyWith => _ResponseInvalidCopyWithImpl(
          this as ResponseInvalid, $identity, $identity);
  @override
  String toString() {
    return ResponseInvalidMapper.ensureInitialized()
        .stringifyValue(this as ResponseInvalid);
  }

  @override
  bool operator ==(Object other) {
    return ResponseInvalidMapper.ensureInitialized()
        .equalsValue(this as ResponseInvalid, other);
  }

  @override
  int get hashCode {
    return ResponseInvalidMapper.ensureInitialized()
        .hashValue(this as ResponseInvalid);
  }
}

extension ResponseInvalidValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResponseInvalid, $Out> {
  ResponseInvalidCopyWith<$R, ResponseInvalid, $Out> get $asResponseInvalid =>
      $base.as((v, t, t2) => _ResponseInvalidCopyWithImpl(v, t, t2));
}

abstract class ResponseInvalidCopyWith<$R, $In extends ResponseInvalid, $Out>
    implements ResponseCopyWith<$R, $In, $Out, Never> {
  @override
  $R call({Object? rawResponse});
  ResponseInvalidCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResponseInvalidCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResponseInvalid, $Out>
    implements ResponseInvalidCopyWith<$R, ResponseInvalid, $Out> {
  _ResponseInvalidCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResponseInvalid> $mapper =
      ResponseInvalidMapper.ensureInitialized();
  @override
  $R call({Object? rawResponse = $none}) => $apply(
      FieldCopyWithData({if (rawResponse != $none) #rawResponse: rawResponse}));
  @override
  ResponseInvalid $make(CopyWithData data) =>
      ResponseInvalid(data.get(#rawResponse, or: $value.rawResponse));

  @override
  ResponseInvalidCopyWith<$R2, ResponseInvalid, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseInvalidCopyWithImpl($value, $cast, t);
}

class ResponseOkMapper extends SubClassMapperBase<ResponseOk> {
  ResponseOkMapper._();

  static ResponseOkMapper? _instance;
  static ResponseOkMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseOkMapper._());
      ResponseMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ResponseOk';
  @override
  Function get typeFactory => <T>(f) => f<ResponseOk<T>>();

  static dynamic _$result(ResponseOk v) => v.result;
  static dynamic _arg$result<T>(f) => f<T>();
  static const Field<ResponseOk, dynamic> _f$result =
      Field('result', _$result, arg: _arg$result);
  static Object? _$related(ResponseOk v) => v.related;
  static const Field<ResponseOk, Object> _f$related =
      Field('related', _$related, opt: true);
  static bool _$isError(ResponseOk v) => v.isError;
  static const Field<ResponseOk, bool> _f$isError =
      Field('isError', _$isError, key: 'error');

  @override
  final MappableFields<ResponseOk> fields = const {
    #result: _f$result,
    #related: _f$related,
    #isError: _f$isError,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = ResponseOk._checkType;
  @override
  late final ClassMapperBase superMapper = ResponseMapper.ensureInitialized();

  static ResponseOk<T> _instantiate<T>(DecodingData data) {
    return ResponseOk(
        result: data.dec(_f$result), related: data.dec(_f$related));
  }

  @override
  final Function instantiate = _instantiate;

  static ResponseOk<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResponseOk<T>>(map);
  }

  static ResponseOk<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<ResponseOk<T>>(json);
  }
}

mixin ResponseOkMappable<T> {
  String toJson() {
    return ResponseOkMapper.ensureInitialized()
        .encodeJson<ResponseOk<T>>(this as ResponseOk<T>);
  }

  Map<String, dynamic> toMap() {
    return ResponseOkMapper.ensureInitialized()
        .encodeMap<ResponseOk<T>>(this as ResponseOk<T>);
  }

  ResponseOkCopyWith<ResponseOk<T>, ResponseOk<T>, ResponseOk<T>, T>
      get copyWith =>
          _ResponseOkCopyWithImpl(this as ResponseOk<T>, $identity, $identity);
  @override
  String toString() {
    return ResponseOkMapper.ensureInitialized()
        .stringifyValue(this as ResponseOk<T>);
  }

  @override
  bool operator ==(Object other) {
    return ResponseOkMapper.ensureInitialized()
        .equalsValue(this as ResponseOk<T>, other);
  }

  @override
  int get hashCode {
    return ResponseOkMapper.ensureInitialized()
        .hashValue(this as ResponseOk<T>);
  }
}

extension ResponseOkValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, ResponseOk<T>, $Out> {
  ResponseOkCopyWith<$R, ResponseOk<T>, $Out, T> get $asResponseOk =>
      $base.as((v, t, t2) => _ResponseOkCopyWithImpl(v, t, t2));
}

abstract class ResponseOkCopyWith<$R, $In extends ResponseOk<T>, $Out, T>
    implements ResponseCopyWith<$R, $In, $Out, T> {
  @override
  $R call({T? result, Object? related});
  ResponseOkCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResponseOkCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, ResponseOk<T>, $Out>
    implements ResponseOkCopyWith<$R, ResponseOk<T>, $Out, T> {
  _ResponseOkCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResponseOk> $mapper =
      ResponseOkMapper.ensureInitialized();
  @override
  $R call({T? result, Object? related = $none}) => $apply(FieldCopyWithData({
        if (result != null) #result: result,
        if (related != $none) #related: related
      }));
  @override
  ResponseOk<T> $make(CopyWithData data) => ResponseOk(
      result: data.get(#result, or: $value.result),
      related: data.get(#related, or: $value.related));

  @override
  ResponseOkCopyWith<$R2, ResponseOk<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseOkCopyWithImpl($value, $cast, t);
}
