import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'personal_data.mapper.dart';

@MappableClass()
class PersonalData with PersonalDataMappable {

  PersonalData({
    this.name = '',
    this.showBirthType = ShowBirthType.notShow,
    this.gender = Gender.notShow,
    this.birth,
    this.lifeStatus,
    this.about,
  });

  String name;

  ShowBirthType showBirthType;

  DateTime? birth;

  Gender gender;

  String? lifeStatus;

  String? about;
}
