// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'personal_data.dart';

class PersonalDataMapper extends ClassMapperBase<PersonalData> {
  PersonalDataMapper._();

  static PersonalDataMapper? _instance;
  static PersonalDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonalDataMapper._());
      ShowBirthTypeMapper.ensureInitialized();
      GenderMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PersonalData';

  static String _$name(PersonalData v) => v.name;
  static const Field<PersonalData, String> _f$name =
      Field('name', _$name, opt: true, def: '');
  static ShowBirthType _$showBirthType(PersonalData v) => v.showBirthType;
  static const Field<PersonalData, ShowBirthType> _f$showBirthType = Field(
      'showBirthType', _$showBirthType,
      opt: true, def: ShowBirthType.notShow);
  static Gender _$gender(PersonalData v) => v.gender;
  static const Field<PersonalData, Gender> _f$gender =
      Field('gender', _$gender, opt: true, def: Gender.notShow);
  static DateTime? _$birth(PersonalData v) => v.birth;
  static const Field<PersonalData, DateTime> _f$birth =
      Field('birth', _$birth, opt: true);
  static String? _$lifeStatus(PersonalData v) => v.lifeStatus;
  static const Field<PersonalData, String> _f$lifeStatus =
      Field('lifeStatus', _$lifeStatus, opt: true);
  static String? _$about(PersonalData v) => v.about;
  static const Field<PersonalData, String> _f$about =
      Field('about', _$about, opt: true);

  @override
  final MappableFields<PersonalData> fields = const {
    #name: _f$name,
    #showBirthType: _f$showBirthType,
    #gender: _f$gender,
    #birth: _f$birth,
    #lifeStatus: _f$lifeStatus,
    #about: _f$about,
  };

  static PersonalData _instantiate(DecodingData data) {
    return PersonalData(
        name: data.dec(_f$name),
        showBirthType: data.dec(_f$showBirthType),
        gender: data.dec(_f$gender),
        birth: data.dec(_f$birth),
        lifeStatus: data.dec(_f$lifeStatus),
        about: data.dec(_f$about));
  }

  @override
  final Function instantiate = _instantiate;

  static PersonalData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonalData>(map);
  }

  static PersonalData fromJson(String json) {
    return ensureInitialized().decodeJson<PersonalData>(json);
  }
}

mixin PersonalDataMappable {
  String toJson() {
    return PersonalDataMapper.ensureInitialized()
        .encodeJson<PersonalData>(this as PersonalData);
  }

  Map<String, dynamic> toMap() {
    return PersonalDataMapper.ensureInitialized()
        .encodeMap<PersonalData>(this as PersonalData);
  }

  PersonalDataCopyWith<PersonalData, PersonalData, PersonalData> get copyWith =>
      _PersonalDataCopyWithImpl(this as PersonalData, $identity, $identity);
  @override
  String toString() {
    return PersonalDataMapper.ensureInitialized()
        .stringifyValue(this as PersonalData);
  }

  @override
  bool operator ==(Object other) {
    return PersonalDataMapper.ensureInitialized()
        .equalsValue(this as PersonalData, other);
  }

  @override
  int get hashCode {
    return PersonalDataMapper.ensureInitialized()
        .hashValue(this as PersonalData);
  }
}

extension PersonalDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonalData, $Out> {
  PersonalDataCopyWith<$R, PersonalData, $Out> get $asPersonalData =>
      $base.as((v, t, t2) => _PersonalDataCopyWithImpl(v, t, t2));
}

abstract class PersonalDataCopyWith<$R, $In extends PersonalData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      ShowBirthType? showBirthType,
      Gender? gender,
      DateTime? birth,
      String? lifeStatus,
      String? about});
  PersonalDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PersonalDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonalData, $Out>
    implements PersonalDataCopyWith<$R, PersonalData, $Out> {
  _PersonalDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonalData> $mapper =
      PersonalDataMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          ShowBirthType? showBirthType,
          Gender? gender,
          Object? birth = $none,
          Object? lifeStatus = $none,
          Object? about = $none}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (showBirthType != null) #showBirthType: showBirthType,
        if (gender != null) #gender: gender,
        if (birth != $none) #birth: birth,
        if (lifeStatus != $none) #lifeStatus: lifeStatus,
        if (about != $none) #about: about
      }));
  @override
  PersonalData $make(CopyWithData data) => PersonalData(
      name: data.get(#name, or: $value.name),
      showBirthType: data.get(#showBirthType, or: $value.showBirthType),
      gender: data.get(#gender, or: $value.gender),
      birth: data.get(#birth, or: $value.birth),
      lifeStatus: data.get(#lifeStatus, or: $value.lifeStatus),
      about: data.get(#about, or: $value.about));

  @override
  PersonalDataCopyWith<$R2, PersonalData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PersonalDataCopyWithImpl($value, $cast, t);
}
