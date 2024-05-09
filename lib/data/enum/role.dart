import 'package:dart_mappable/dart_mappable.dart';

part 'role.mapper.dart';

@MappableEnum()
enum Role {
  @MappableValue('ADMIN') admin,
  @MappableValue('USER') user,
  @MappableValue('LOW_MODERATOR') lowModerator,
  @MappableValue('HIGH_MODERATOR') highModerator,
  @MappableValue('BANNED') banned,
  @MappableValue('VOTE_BANNED') voteBanned,
  @MappableValue('ALL_PUBLISH_BANNED') allPublishBanned,
}
