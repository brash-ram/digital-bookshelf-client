part of 'response.dart';

@MappableClass(discriminatorValue: ResponseEmpty._checkType)
final class ResponseEmpty<T> extends Response<T> with ResponseEmptyMappable<T> {
  const ResponseEmpty({
    required this.result,
    required this.isEmpty,
  }) : super(isError: false);

  @MappableField(key: 'result')
  final T result;

  final bool isEmpty;


  static bool _checkType(dynamic value) => switch(value) {
    {
    'error': false,
    'isEmpty': true,
    } => true,
    _ => false,
  };
}
