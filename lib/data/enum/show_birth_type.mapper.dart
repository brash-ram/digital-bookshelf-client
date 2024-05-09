// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'show_birth_type.dart';

class ShowBirthTypeMapper extends EnumMapper<ShowBirthType> {
  ShowBirthTypeMapper._();

  static ShowBirthTypeMapper? _instance;
  static ShowBirthTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ShowBirthTypeMapper._());
    }
    return _instance!;
  }

  static ShowBirthType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ShowBirthType decode(dynamic value) {
    switch (value) {
      case 'SHOW':
        return ShowBirthType.show;
      case 'SHOW_WITHOUT_YEAR':
        return ShowBirthType.showWithoutYear;
      case 'NOT_SHOW':
        return ShowBirthType.notShow;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ShowBirthType self) {
    switch (self) {
      case ShowBirthType.show:
        return 'SHOW';
      case ShowBirthType.showWithoutYear:
        return 'SHOW_WITHOUT_YEAR';
      case ShowBirthType.notShow:
        return 'NOT_SHOW';
    }
  }
}

extension ShowBirthTypeMapperExtension on ShowBirthType {
  dynamic toValue() {
    ShowBirthTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ShowBirthType>(this);
  }
}
