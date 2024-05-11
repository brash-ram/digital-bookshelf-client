import 'dart:io';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/api/api_exception.dart';
import 'package:digital_bookshelf_client/api/auth_controller.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/logging.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';


class Client {
  Client({
    required this.baseUri,
    required this.authController,
    required this.client,
  });

  static const kIncludeRequestsInErrors = true;

  final Uri baseUri;
  final AuthController authController;
  final http.Client client;

  Future<T> request<T, B>(
    String path, {
      String method = 'GET',
      Map<String, String> queryParameters = const {},
      Map<String, String> headers = const {},
      B? body,
      Uint8List? bodyBytes,
    }
  ) async {
    method = method.toUpperCase();
    assert(body == null || bodyBytes == null, 'Cannot supply both text body and bytes body');
    assert(
      switch(method) {
        'GET' || 'HEAD' when body != null || bodyBytes != null => false,
        _ => true,
      },
      'Cannot supply body with GET or HEAD methods',
    );
    final request = http.Request(
      method,
      baseUri.replace(
        path: baseUri.path + path,
        queryParameters: queryParameters,
      ),
    );
    request.headers.addAll(headers);
    authController.authorizeRequest(request);
    if (body != null) {
      request.body = MapperContainer.globals.toJson(body);
    }
    if (bodyBytes != null) {
      request.bodyBytes = bodyBytes;
    }
  
    final errorDetailsRequest = !kIncludeRequestsInErrors ? null : request;
    final http.Response response;
    try {
      response = await http.Response.fromStream(await client.send(request));
    } on http.ClientException catch(exception) {
      throw ApiException<Never>(
        'Connection error',
        innerException: exception,
        httpRequest: errorDetailsRequest,
      );
    }
    try {
      final data = MapperContainer.globals.fromJson<Response<T>>(response.body);
      switch (data) {
        case ResponseOk():
          return data.result;
        case ResponseEmpty():
          return data.result;
        case ResponseError(:final message, :final code):
          throw ApiException.withResponse(
            'Error $code: $message',
            data,
            httpRequest: errorDetailsRequest,
            httpResponse: response,
          );
        case ResponseInvalid():
          throw ApiException.withResponse(
            'Invalid server response',
            data,
            httpRequest: errorDetailsRequest,
            httpResponse: response,
          );
      }
    } on FormatException catch(exception) {
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
        httpRequest: errorDetailsRequest,
        httpResponse: response,
      );
    } on MapperException catch(exception, stackTrace) {
      talker.verbose('Failed to decode server response.', exception, stackTrace);
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
        httpRequest: errorDetailsRequest,
        httpResponse: response,
      );
    } on Exception catch(exception, stackTrace) {
      talker.verbose('Invalid server response', exception, stackTrace);
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
        httpRequest: errorDetailsRequest,
        httpResponse: response,
      );
    }
  }

  Future<T> get<T>(String path, {
    Map<String, String> queryParameters = const {},
    Map<String, String> headers = const {},
  }) =>
    request<T, Never>(
      path,
      queryParameters: queryParameters,
      headers: headers,
    )
    .then((value) => value);

  Future<T> post<T, B>(String path, {
    B? body,
    Map<String, String> queryParameters = const {},
    Map<String, String> headers = const {},
  }) =>
    request<T, B>(
      path,
      method: 'POST',
      headers: {
        'content-type': 'application/json',
        ...headers,
      },
      queryParameters: queryParameters,
      body: body,
    )
    .then((value) => value);

  Future<T> postBinary<T>(String path, {
    Uint8List? bodyBytes,
    Map<String, String> queryParameters = const {},
    Map<String, String> headers = const {},
  }) =>
    request<T, Never>(
      path,
      method: 'POST',
      headers: {
        'content-type': 'application/octet-stream',
        ...headers,
      },
      queryParameters: queryParameters,
      bodyBytes: bodyBytes,
    )
    .then((value) => value);


  Future<T> postMultipart<T, B>(
      String path,
      File file, {
        Map<String, String> queryParameters = const {},
        Map<String, String> headers = const {},
        // B? body,
      }
      ) async {
    // assert(body == null || file == null, 'Cannot supply both text body and bytes body');
    final request = http.MultipartRequest(
      'POST',
      baseUri.replace(
        path: baseUri.path + path,
        queryParameters: queryParameters,
      ),
    );
    request.headers.addAll(headers);
    authController.authorizeMultipartRequest(request);

    final httpImage = http.MultipartFile.fromBytes('photos', await file.readAsBytes(),
        contentType: MediaType.parse('image/png'), filename: file.path.split('/').last,);
    request.files.add(httpImage);
    final http.Response response;
    try {
      response = await http.Response.fromStream(await client.send(request));
    } on http.ClientException catch(exception) {
      throw ApiException<Never>(
        'Connection error',
        innerException: exception,
      );
    }
    try {
      return MapperContainer.globals.fromJson<T>(response.body);
    } on FormatException catch(exception) {
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
        httpResponse: response,
      );
    } on MapperException catch(exception, stackTrace) {
      talker.verbose('Failed to decode server response.', exception, stackTrace);
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
        httpResponse: response,
      );
    } on Exception catch(exception, stackTrace) {
      talker.verbose('Invalid server response', exception, stackTrace);
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
        httpResponse: response,
      );
    }
  }


// Future<Gallery> getGallery(int id) =>
  //   _get('/gallery/$id');

  // Future<Meme> createMeme({
  //   required RequestBodyCreateMeme meme,
  //   required AssetTemporaryTicket assetTicket,
  //   required int galleryId,
  // }) async =>
  //   _post(
  //     '/meme/create',
  //     body: meme,
  //     queryParameters: {
  //       'asset': assetTicket.temporaryTicket,
  //       'gallery_id': galleryId.toString(),
  //     },
  //   );
  //
  // Future<Meme> getMeme(int galleryId, int memeId) async =>
  //   _get('/meme/${galleryId}_$memeId');
  //
  // Future<List<MemeTag>> getMemeTags(int galleryId, int memeId) =>
  //   _get('/meme/${galleryId}_$memeId/tags');
  //
  // Future<List<MemeTag>> voteForMemeTag(int galleryId, int memeId, int tagId, VoteType? vote) =>
  //   _post('/meme/${galleryId}_$memeId/vote/$tagId', body: RequestBodyVote(type: vote));
  //
  // Future<TenantProfile> getMyTenantProfile() =>
  //   _get('/tenant/my_profile');
  //
  // Future<Tenant> getTenant(int id) =>
  //   _get('/tenant/$id');
  //
  // Future<TenantProfile> getTenantProfile(int id) =>
  //   _get('/tenant/$id/profile');
  //
  // Future<List<FeedItem>> getFeed(int offset, int limit, FeedType type) =>
  //   _get(
  //     type == FeedType.latest
  //       ? '/feed/public'
  //       : '/feed/recommended',
  //     queryParameters: {
  //       'offset': offset.toString(),
  //       'limit': limit.toString(),
  //     },
  //   );
  //
  // Future<List<FeedItem>> getGalleryMemes(int galleryId, int offset, int limit) =>
  //     _get(
  //       '/feed/gallery/$galleryId',
  //       queryParameters: {
  //       'offset': offset.toString(),
  //       'limit': limit.toString(),
  //       },
  //     );
  //
  // Future<List<AvailableGalleryName>> getAvailableGalleryNames() =>
  //   _get('/gallery/available_names');
  //
  // Future<AssetTemporaryTicket> uploadAsset(Uint8List data, AssetType type) =>
  //   _postBinary(
  //     '/asset/upload',
  //     bodyBytes: data,
  //     queryParameters: const { 'type': 'IMAGE' },
  //   );
  //
  // Uri getAssetUri(int assetId) => baseUri.replace(
  //   path: '${baseUri.path}/asset/$assetId',
  // );
  //
  // Future<AuthResult> auth(int telegramUserId, RequestBodyAuth bodyAuth) =>
  //   _post('/service/tg/external_user/$telegramUserId/auth', body: bodyAuth);
}
