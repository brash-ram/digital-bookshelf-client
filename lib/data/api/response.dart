import 'package:dart_mappable/dart_mappable.dart';

part 'response.mapper.dart';
part 'response_empty.dart';
part 'response_error.dart';
part 'response_invalid.dart';
part 'response_ok.dart';


@MappableClass()
sealed class Response<T> with ResponseMappable<T> {
  const Response({
    required this.isError,
  });

  @MappableField(key: 'error')
  final bool isError;
}
