import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'user_info.mapper.dart';

@MappableClass()
class UserInfo with UserInfoMappable {

  UserInfo({
    required this.id,
    required this.profileImage,
    required this.name,
    required this.showBirthType,
    required this.gender,
    required this.roles,
    required this.library,
    this.birth,
    this.lifeStatus,
    this.about,
    this.refVk,
    this.refTg,
    this.refSite,
    this.refEmail,
    this.authorInfoId,
  });

  final int id;

  final List<Role> roles;

  final ImageModel profileImage;

  final String name;

  final ShowBirthType showBirthType;

  final DateTime? birth;

  final Gender gender;

  final String? lifeStatus;

  final String? about;

  final String? refVk;

  final String? refTg;

  final String? refSite;

  final String? refEmail;

  final int? authorInfoId;

  final List<BookListItem> library;
}
