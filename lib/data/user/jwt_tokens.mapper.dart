// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'jwt_tokens.dart';

class JwtTokensMapper extends ClassMapperBase<JwtTokens> {
  JwtTokensMapper._();

  static JwtTokensMapper? _instance;
  static JwtTokensMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JwtTokensMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'JwtTokens';

  static String _$accessToken(JwtTokens v) => v.accessToken;
  static const Field<JwtTokens, String> _f$accessToken =
      Field('accessToken', _$accessToken);
  static String _$refreshToken(JwtTokens v) => v.refreshToken;
  static const Field<JwtTokens, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken);

  @override
  final MappableFields<JwtTokens> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };

  static JwtTokens _instantiate(DecodingData data) {
    return JwtTokens(
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static JwtTokens fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JwtTokens>(map);
  }

  static JwtTokens fromJson(String json) {
    return ensureInitialized().decodeJson<JwtTokens>(json);
  }
}

mixin JwtTokensMappable {
  String toJson() {
    return JwtTokensMapper.ensureInitialized()
        .encodeJson<JwtTokens>(this as JwtTokens);
  }

  Map<String, dynamic> toMap() {
    return JwtTokensMapper.ensureInitialized()
        .encodeMap<JwtTokens>(this as JwtTokens);
  }

  JwtTokensCopyWith<JwtTokens, JwtTokens, JwtTokens> get copyWith =>
      _JwtTokensCopyWithImpl(this as JwtTokens, $identity, $identity);
  @override
  String toString() {
    return JwtTokensMapper.ensureInitialized()
        .stringifyValue(this as JwtTokens);
  }

  @override
  bool operator ==(Object other) {
    return JwtTokensMapper.ensureInitialized()
        .equalsValue(this as JwtTokens, other);
  }

  @override
  int get hashCode {
    return JwtTokensMapper.ensureInitialized().hashValue(this as JwtTokens);
  }
}

extension JwtTokensValueCopy<$R, $Out> on ObjectCopyWith<$R, JwtTokens, $Out> {
  JwtTokensCopyWith<$R, JwtTokens, $Out> get $asJwtTokens =>
      $base.as((v, t, t2) => _JwtTokensCopyWithImpl(v, t, t2));
}

abstract class JwtTokensCopyWith<$R, $In extends JwtTokens, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? refreshToken});
  JwtTokensCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JwtTokensCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JwtTokens, $Out>
    implements JwtTokensCopyWith<$R, JwtTokens, $Out> {
  _JwtTokensCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JwtTokens> $mapper =
      JwtTokensMapper.ensureInitialized();
  @override
  $R call({String? accessToken, String? refreshToken}) =>
      $apply(FieldCopyWithData({
        if (accessToken != null) #accessToken: accessToken,
        if (refreshToken != null) #refreshToken: refreshToken
      }));
  @override
  JwtTokens $make(CopyWithData data) => JwtTokens(
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken));

  @override
  JwtTokensCopyWith<$R2, JwtTokens, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _JwtTokensCopyWithImpl($value, $cast, t);
}
