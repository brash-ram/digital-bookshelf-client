// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'price_type.dart';

class PriceTypeMapper extends EnumMapper<PriceType> {
  PriceTypeMapper._();

  static PriceTypeMapper? _instance;
  static PriceTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PriceTypeMapper._());
    }
    return _instance!;
  }

  static PriceType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PriceType decode(dynamic value) {
    switch (value) {
      case 'FREE':
        return PriceType.free;
      case 'SELLING':
        return PriceType.selling;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PriceType self) {
    switch (self) {
      case PriceType.free:
        return 'FREE';
      case PriceType.selling:
        return 'SELLING';
    }
  }
}

extension PriceTypeMapperExtension on PriceType {
  dynamic toValue() {
    PriceTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PriceType>(this);
  }
}
