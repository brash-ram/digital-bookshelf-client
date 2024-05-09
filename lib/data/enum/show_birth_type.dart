import 'package:dart_mappable/dart_mappable.dart';

part 'show_birth_type.mapper.dart';

@MappableEnum()
enum ShowBirthType {
  @MappableValue('SHOW') show,
  @MappableValue('SHOW_WITHOUT_YEAR') showWithoutYear,
  @MappableValue('NOT_SHOW') notShow
}
