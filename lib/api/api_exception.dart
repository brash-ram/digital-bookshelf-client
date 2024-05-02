import 'package:http/http.dart' as http;


class ApiException<T> implements Exception {
  const factory ApiException(String message, {
    Exception? innerException,
    http.Request? httpRequest,
    http.Response? httpResponse,
  }) = ApiException<Never>._;

  const ApiException._(this.message, {
    this.innerException,
    this.httpRequest,
    this.httpResponse,
  }) : response = null;

  const ApiException.withResponse(this.message, this.response, {
    this.innerException,
    this.httpRequest,
    this.httpResponse,
  });

  final String message;
  final T? response;
  final http.Request? httpRequest;
  final http.Response? httpResponse;
  final Exception? innerException;

  @override
  String toString() =>
    'ApiException($message${
      innerException != null
        ? ', Inner exception: $innerException'
        : ''
    })';
}
