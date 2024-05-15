import 'package:dart_mappable/dart_mappable.dart';

part 'jwt_tokens.mapper.dart';

@MappableClass()
class JwtTokens with JwtTokensMappable {

  JwtTokens({
    required this.accessToken,
    required this.refreshToken,
  });

  final String accessToken;

  final String refreshToken;
}
