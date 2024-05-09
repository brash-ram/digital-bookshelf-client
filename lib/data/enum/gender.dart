import 'package:dart_mappable/dart_mappable.dart';

part 'gender.mapper.dart';

@MappableEnum()
enum Gender {
  @MappableValue('MALE') male,
  @MappableValue('FEMALE') female,
  @MappableValue('NOT_SHOW') notShow
}
