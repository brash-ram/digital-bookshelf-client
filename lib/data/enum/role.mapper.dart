// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'role.dart';

class RoleMapper extends EnumMapper<Role> {
  RoleMapper._();

  static RoleMapper? _instance;
  static RoleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoleMapper._());
    }
    return _instance!;
  }

  static Role fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Role decode(dynamic value) {
    switch (value) {
      case 'ADMIN':
        return Role.admin;
      case 'USER':
        return Role.user;
      case 'LOW_MODERATOR':
        return Role.lowModerator;
      case 'HIGH_MODERATOR':
        return Role.highModerator;
      case 'BANNED':
        return Role.banned;
      case 'VOTE_BANNED':
        return Role.voteBanned;
      case 'ALL_PUBLISH_BANNED':
        return Role.allPublishBanned;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Role self) {
    switch (self) {
      case Role.admin:
        return 'ADMIN';
      case Role.user:
        return 'USER';
      case Role.lowModerator:
        return 'LOW_MODERATOR';
      case Role.highModerator:
        return 'HIGH_MODERATOR';
      case Role.banned:
        return 'BANNED';
      case Role.voteBanned:
        return 'VOTE_BANNED';
      case Role.allPublishBanned:
        return 'ALL_PUBLISH_BANNED';
    }
  }
}

extension RoleMapperExtension on Role {
  dynamic toValue() {
    RoleMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Role>(this);
  }
}
