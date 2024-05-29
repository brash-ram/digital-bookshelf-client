// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_info.dart';

class UserInfoMapper extends ClassMapperBase<UserInfo> {
  UserInfoMapper._();

  static UserInfoMapper? _instance;
  static UserInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserInfoMapper._());
      ImageModelMapper.ensureInitialized();
      ShowBirthTypeMapper.ensureInitialized();
      GenderMapper.ensureInitialized();
      RoleMapper.ensureInitialized();
      BookListItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserInfo';

  static int _$id(UserInfo v) => v.id;
  static const Field<UserInfo, int> _f$id = Field('id', _$id);
  static ImageModel _$profileImage(UserInfo v) => v.profileImage;
  static const Field<UserInfo, ImageModel> _f$profileImage =
      Field('profileImage', _$profileImage);
  static String _$name(UserInfo v) => v.name;
  static const Field<UserInfo, String> _f$name = Field('name', _$name);
  static ShowBirthType _$showBirthType(UserInfo v) => v.showBirthType;
  static const Field<UserInfo, ShowBirthType> _f$showBirthType =
      Field('showBirthType', _$showBirthType);
  static Gender _$gender(UserInfo v) => v.gender;
  static const Field<UserInfo, Gender> _f$gender = Field('gender', _$gender);
  static List<Role> _$roles(UserInfo v) => v.roles;
  static const Field<UserInfo, List<Role>> _f$roles = Field('roles', _$roles);
  static List<BookListItem> _$library(UserInfo v) => v.library;
  static const Field<UserInfo, List<BookListItem>> _f$library =
      Field('library', _$library);
  static DateTime? _$birth(UserInfo v) => v.birth;
  static const Field<UserInfo, DateTime> _f$birth =
      Field('birth', _$birth, opt: true);
  static String? _$lifeStatus(UserInfo v) => v.lifeStatus;
  static const Field<UserInfo, String> _f$lifeStatus =
      Field('lifeStatus', _$lifeStatus, opt: true);
  static String? _$about(UserInfo v) => v.about;
  static const Field<UserInfo, String> _f$about =
      Field('about', _$about, opt: true);
  static String? _$refVk(UserInfo v) => v.refVk;
  static const Field<UserInfo, String> _f$refVk =
      Field('refVk', _$refVk, opt: true);
  static String? _$refTg(UserInfo v) => v.refTg;
  static const Field<UserInfo, String> _f$refTg =
      Field('refTg', _$refTg, opt: true);
  static String? _$refSite(UserInfo v) => v.refSite;
  static const Field<UserInfo, String> _f$refSite =
      Field('refSite', _$refSite, opt: true);
  static String? _$refEmail(UserInfo v) => v.refEmail;
  static const Field<UserInfo, String> _f$refEmail =
      Field('refEmail', _$refEmail, opt: true);
  static int? _$authorInfoId(UserInfo v) => v.authorInfoId;
  static const Field<UserInfo, int> _f$authorInfoId =
      Field('authorInfoId', _$authorInfoId, opt: true);

  @override
  final MappableFields<UserInfo> fields = const {
    #id: _f$id,
    #profileImage: _f$profileImage,
    #name: _f$name,
    #showBirthType: _f$showBirthType,
    #gender: _f$gender,
    #roles: _f$roles,
    #library: _f$library,
    #birth: _f$birth,
    #lifeStatus: _f$lifeStatus,
    #about: _f$about,
    #refVk: _f$refVk,
    #refTg: _f$refTg,
    #refSite: _f$refSite,
    #refEmail: _f$refEmail,
    #authorInfoId: _f$authorInfoId,
  };

  static UserInfo _instantiate(DecodingData data) {
    return UserInfo(
        id: data.dec(_f$id),
        profileImage: data.dec(_f$profileImage),
        name: data.dec(_f$name),
        showBirthType: data.dec(_f$showBirthType),
        gender: data.dec(_f$gender),
        roles: data.dec(_f$roles),
        library: data.dec(_f$library),
        birth: data.dec(_f$birth),
        lifeStatus: data.dec(_f$lifeStatus),
        about: data.dec(_f$about),
        refVk: data.dec(_f$refVk),
        refTg: data.dec(_f$refTg),
        refSite: data.dec(_f$refSite),
        refEmail: data.dec(_f$refEmail),
        authorInfoId: data.dec(_f$authorInfoId));
  }

  @override
  final Function instantiate = _instantiate;

  static UserInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserInfo>(map);
  }

  static UserInfo fromJson(String json) {
    return ensureInitialized().decodeJson<UserInfo>(json);
  }
}

mixin UserInfoMappable {
  String toJson() {
    return UserInfoMapper.ensureInitialized()
        .encodeJson<UserInfo>(this as UserInfo);
  }

  Map<String, dynamic> toMap() {
    return UserInfoMapper.ensureInitialized()
        .encodeMap<UserInfo>(this as UserInfo);
  }

  UserInfoCopyWith<UserInfo, UserInfo, UserInfo> get copyWith =>
      _UserInfoCopyWithImpl(this as UserInfo, $identity, $identity);
  @override
  String toString() {
    return UserInfoMapper.ensureInitialized().stringifyValue(this as UserInfo);
  }

  @override
  bool operator ==(Object other) {
    return UserInfoMapper.ensureInitialized()
        .equalsValue(this as UserInfo, other);
  }

  @override
  int get hashCode {
    return UserInfoMapper.ensureInitialized().hashValue(this as UserInfo);
  }
}

extension UserInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserInfo, $Out> {
  UserInfoCopyWith<$R, UserInfo, $Out> get $asUserInfo =>
      $base.as((v, t, t2) => _UserInfoCopyWithImpl(v, t, t2));
}

abstract class UserInfoCopyWith<$R, $In extends UserInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ImageModelCopyWith<$R, ImageModel, ImageModel> get profileImage;
  ListCopyWith<$R, Role, ObjectCopyWith<$R, Role, Role>> get roles;
  ListCopyWith<$R, BookListItem,
      BookListItemCopyWith<$R, BookListItem, BookListItem>> get library;
  $R call(
      {int? id,
      ImageModel? profileImage,
      String? name,
      ShowBirthType? showBirthType,
      Gender? gender,
      List<Role>? roles,
      List<BookListItem>? library,
      DateTime? birth,
      String? lifeStatus,
      String? about,
      String? refVk,
      String? refTg,
      String? refSite,
      String? refEmail,
      int? authorInfoId});
  UserInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserInfo, $Out>
    implements UserInfoCopyWith<$R, UserInfo, $Out> {
  _UserInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserInfo> $mapper =
      UserInfoMapper.ensureInitialized();
  @override
  ImageModelCopyWith<$R, ImageModel, ImageModel> get profileImage =>
      $value.profileImage.copyWith.$chain((v) => call(profileImage: v));
  @override
  ListCopyWith<$R, Role, ObjectCopyWith<$R, Role, Role>> get roles =>
      ListCopyWith($value.roles, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(roles: v));
  @override
  ListCopyWith<$R, BookListItem,
          BookListItemCopyWith<$R, BookListItem, BookListItem>>
      get library => ListCopyWith($value.library,
          (v, t) => v.copyWith.$chain(t), (v) => call(library: v));
  @override
  $R call(
          {int? id,
          ImageModel? profileImage,
          String? name,
          ShowBirthType? showBirthType,
          Gender? gender,
          List<Role>? roles,
          List<BookListItem>? library,
          Object? birth = $none,
          Object? lifeStatus = $none,
          Object? about = $none,
          Object? refVk = $none,
          Object? refTg = $none,
          Object? refSite = $none,
          Object? refEmail = $none,
          Object? authorInfoId = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (profileImage != null) #profileImage: profileImage,
        if (name != null) #name: name,
        if (showBirthType != null) #showBirthType: showBirthType,
        if (gender != null) #gender: gender,
        if (roles != null) #roles: roles,
        if (library != null) #library: library,
        if (birth != $none) #birth: birth,
        if (lifeStatus != $none) #lifeStatus: lifeStatus,
        if (about != $none) #about: about,
        if (refVk != $none) #refVk: refVk,
        if (refTg != $none) #refTg: refTg,
        if (refSite != $none) #refSite: refSite,
        if (refEmail != $none) #refEmail: refEmail,
        if (authorInfoId != $none) #authorInfoId: authorInfoId
      }));
  @override
  UserInfo $make(CopyWithData data) => UserInfo(
      id: data.get(#id, or: $value.id),
      profileImage: data.get(#profileImage, or: $value.profileImage),
      name: data.get(#name, or: $value.name),
      showBirthType: data.get(#showBirthType, or: $value.showBirthType),
      gender: data.get(#gender, or: $value.gender),
      roles: data.get(#roles, or: $value.roles),
      library: data.get(#library, or: $value.library),
      birth: data.get(#birth, or: $value.birth),
      lifeStatus: data.get(#lifeStatus, or: $value.lifeStatus),
      about: data.get(#about, or: $value.about),
      refVk: data.get(#refVk, or: $value.refVk),
      refTg: data.get(#refTg, or: $value.refTg),
      refSite: data.get(#refSite, or: $value.refSite),
      refEmail: data.get(#refEmail, or: $value.refEmail),
      authorInfoId: data.get(#authorInfoId, or: $value.authorInfoId));

  @override
  UserInfoCopyWith<$R2, UserInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserInfoCopyWithImpl($value, $cast, t);
}
