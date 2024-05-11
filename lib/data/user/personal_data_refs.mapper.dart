// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'personal_data_refs.dart';

class PersonalDataRefsMapper extends ClassMapperBase<PersonalDataRefs> {
  PersonalDataRefsMapper._();

  static PersonalDataRefsMapper? _instance;
  static PersonalDataRefsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonalDataRefsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonalDataRefs';

  static String? _$refVk(PersonalDataRefs v) => v.refVk;
  static const Field<PersonalDataRefs, String> _f$refVk =
      Field('refVk', _$refVk, opt: true);
  static String? _$refTg(PersonalDataRefs v) => v.refTg;
  static const Field<PersonalDataRefs, String> _f$refTg =
      Field('refTg', _$refTg, opt: true);
  static String? _$refSite(PersonalDataRefs v) => v.refSite;
  static const Field<PersonalDataRefs, String> _f$refSite =
      Field('refSite', _$refSite, opt: true);
  static String? _$refEmail(PersonalDataRefs v) => v.refEmail;
  static const Field<PersonalDataRefs, String> _f$refEmail =
      Field('refEmail', _$refEmail, opt: true);

  @override
  final MappableFields<PersonalDataRefs> fields = const {
    #refVk: _f$refVk,
    #refTg: _f$refTg,
    #refSite: _f$refSite,
    #refEmail: _f$refEmail,
  };

  static PersonalDataRefs _instantiate(DecodingData data) {
    return PersonalDataRefs(
        refVk: data.dec(_f$refVk),
        refTg: data.dec(_f$refTg),
        refSite: data.dec(_f$refSite),
        refEmail: data.dec(_f$refEmail));
  }

  @override
  final Function instantiate = _instantiate;

  static PersonalDataRefs fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonalDataRefs>(map);
  }

  static PersonalDataRefs fromJson(String json) {
    return ensureInitialized().decodeJson<PersonalDataRefs>(json);
  }
}

mixin PersonalDataRefsMappable {
  String toJson() {
    return PersonalDataRefsMapper.ensureInitialized()
        .encodeJson<PersonalDataRefs>(this as PersonalDataRefs);
  }

  Map<String, dynamic> toMap() {
    return PersonalDataRefsMapper.ensureInitialized()
        .encodeMap<PersonalDataRefs>(this as PersonalDataRefs);
  }

  PersonalDataRefsCopyWith<PersonalDataRefs, PersonalDataRefs, PersonalDataRefs>
      get copyWith => _PersonalDataRefsCopyWithImpl(
          this as PersonalDataRefs, $identity, $identity);
  @override
  String toString() {
    return PersonalDataRefsMapper.ensureInitialized()
        .stringifyValue(this as PersonalDataRefs);
  }

  @override
  bool operator ==(Object other) {
    return PersonalDataRefsMapper.ensureInitialized()
        .equalsValue(this as PersonalDataRefs, other);
  }

  @override
  int get hashCode {
    return PersonalDataRefsMapper.ensureInitialized()
        .hashValue(this as PersonalDataRefs);
  }
}

extension PersonalDataRefsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonalDataRefs, $Out> {
  PersonalDataRefsCopyWith<$R, PersonalDataRefs, $Out>
      get $asPersonalDataRefs =>
          $base.as((v, t, t2) => _PersonalDataRefsCopyWithImpl(v, t, t2));
}

abstract class PersonalDataRefsCopyWith<$R, $In extends PersonalDataRefs, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? refVk, String? refTg, String? refSite, String? refEmail});
  PersonalDataRefsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PersonalDataRefsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonalDataRefs, $Out>
    implements PersonalDataRefsCopyWith<$R, PersonalDataRefs, $Out> {
  _PersonalDataRefsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonalDataRefs> $mapper =
      PersonalDataRefsMapper.ensureInitialized();
  @override
  $R call(
          {Object? refVk = $none,
          Object? refTg = $none,
          Object? refSite = $none,
          Object? refEmail = $none}) =>
      $apply(FieldCopyWithData({
        if (refVk != $none) #refVk: refVk,
        if (refTg != $none) #refTg: refTg,
        if (refSite != $none) #refSite: refSite,
        if (refEmail != $none) #refEmail: refEmail
      }));
  @override
  PersonalDataRefs $make(CopyWithData data) => PersonalDataRefs(
      refVk: data.get(#refVk, or: $value.refVk),
      refTg: data.get(#refTg, or: $value.refTg),
      refSite: data.get(#refSite, or: $value.refSite),
      refEmail: data.get(#refEmail, or: $value.refEmail));

  @override
  PersonalDataRefsCopyWith<$R2, PersonalDataRefs, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonalDataRefsCopyWithImpl($value, $cast, t);
}
