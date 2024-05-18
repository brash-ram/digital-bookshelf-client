// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'simple_book_series.dart';

class SimpleBookSeriesMapper extends ClassMapperBase<SimpleBookSeries> {
  SimpleBookSeriesMapper._();

  static SimpleBookSeriesMapper? _instance;
  static SimpleBookSeriesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SimpleBookSeriesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SimpleBookSeries';

  static int _$id(SimpleBookSeries v) => v.id;
  static const Field<SimpleBookSeries, int> _f$id = Field('id', _$id);
  static String _$name(SimpleBookSeries v) => v.name;
  static const Field<SimpleBookSeries, String> _f$name =
      Field('name', _$name, opt: true, def: '');
  static String _$description(SimpleBookSeries v) => v.description;
  static const Field<SimpleBookSeries, String> _f$description =
      Field('description', _$description, opt: true, def: '');

  @override
  final MappableFields<SimpleBookSeries> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
  };

  static SimpleBookSeries _instantiate(DecodingData data) {
    return SimpleBookSeries(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static SimpleBookSeries fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SimpleBookSeries>(map);
  }

  static SimpleBookSeries fromJson(String json) {
    return ensureInitialized().decodeJson<SimpleBookSeries>(json);
  }
}

mixin SimpleBookSeriesMappable {
  String toJson() {
    return SimpleBookSeriesMapper.ensureInitialized()
        .encodeJson<SimpleBookSeries>(this as SimpleBookSeries);
  }

  Map<String, dynamic> toMap() {
    return SimpleBookSeriesMapper.ensureInitialized()
        .encodeMap<SimpleBookSeries>(this as SimpleBookSeries);
  }

  SimpleBookSeriesCopyWith<SimpleBookSeries, SimpleBookSeries, SimpleBookSeries>
      get copyWith => _SimpleBookSeriesCopyWithImpl(
          this as SimpleBookSeries, $identity, $identity);
  @override
  String toString() {
    return SimpleBookSeriesMapper.ensureInitialized()
        .stringifyValue(this as SimpleBookSeries);
  }

  @override
  bool operator ==(Object other) {
    return SimpleBookSeriesMapper.ensureInitialized()
        .equalsValue(this as SimpleBookSeries, other);
  }

  @override
  int get hashCode {
    return SimpleBookSeriesMapper.ensureInitialized()
        .hashValue(this as SimpleBookSeries);
  }
}

extension SimpleBookSeriesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SimpleBookSeries, $Out> {
  SimpleBookSeriesCopyWith<$R, SimpleBookSeries, $Out>
      get $asSimpleBookSeries =>
          $base.as((v, t, t2) => _SimpleBookSeriesCopyWithImpl(v, t, t2));
}

abstract class SimpleBookSeriesCopyWith<$R, $In extends SimpleBookSeries, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, String? description});
  SimpleBookSeriesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SimpleBookSeriesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SimpleBookSeries, $Out>
    implements SimpleBookSeriesCopyWith<$R, SimpleBookSeries, $Out> {
  _SimpleBookSeriesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SimpleBookSeries> $mapper =
      SimpleBookSeriesMapper.ensureInitialized();
  @override
  $R call({int? id, String? name, String? description}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != null) #description: description
      }));
  @override
  SimpleBookSeries $make(CopyWithData data) => SimpleBookSeries(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description));

  @override
  SimpleBookSeriesCopyWith<$R2, SimpleBookSeries, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SimpleBookSeriesCopyWithImpl($value, $cast, t);
}
