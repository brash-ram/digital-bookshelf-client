import 'package:dart_mappable/dart_mappable.dart';

part 'personal_data_refs.mapper.dart';

@MappableClass()
class PersonalDataRefs with PersonalDataRefsMappable {

  PersonalDataRefs({
    this.refVk,
    this.refTg,
    this.refSite,
    this.refEmail,
  });

  String? refVk;

  String? refTg;

  String? refSite;

  String? refEmail;
}
