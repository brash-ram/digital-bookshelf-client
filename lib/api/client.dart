import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/api/api_exception.dart';
import 'package:digital_bookshelf_client/api/auth_controller.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/logging.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


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
      String methodName = 'GET',
      Map<String, String> queryParameters = const {},
      Map<String, String> headers = const {},
      B? body,
      Uint8List? bodyBytes,
    }
  ) async {
    final method = methodName.toUpperCase();
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
      methodName: 'POST',
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
      methodName: 'POST',
      headers: {
        'content-type': 'application/octet-stream',
        ...headers,
      },
      queryParameters: queryParameters,
      bodyBytes: bodyBytes,
    )
    .then((value) => value);


  Future<T> postMultipart<T>(
      String path, {
      required Uint8List fileContent,
      required String field,
      Map<String, String> queryParameters = const {},
      Map<String, String> headers = const {},
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

    final httpFile = http.MultipartFile.fromBytes(
      field,
      fileContent,
    );
    request.files.add(httpFile);

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
          );
        case ResponseInvalid():
          throw ApiException.withResponse(
            'Invalid server response',
            data,
          );
      }
    } on FormatException catch(exception) {
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
      );
    } on MapperException catch(exception, stackTrace) {
      talker.verbose('Failed to decode server response.', exception, stackTrace);
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
      );
    } on Exception catch(exception, stackTrace) {
      talker.verbose('Invalid server response', exception, stackTrace);
      throw ApiException<Never>(
        'Invalid server response',
        innerException: exception,
      );
    }
  }

}
