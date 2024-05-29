// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_name.dart';

class BookNameMapper extends ClassMapperBase<BookName> {
  BookNameMapper._();

  static BookNameMapper? _instance;
  static BookNameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookNameMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BookName';

  static int _$id(BookName v) => v.id;
  static const Field<BookName, int> _f$id = Field('id', _$id);
  static String _$name(BookName v) => v.name;
  static const Field<BookName, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<BookName> fields = const {
    #id: _f$id,
    #name: _f$name,
  };

  static BookName _instantiate(DecodingData data) {
    return BookName(id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static BookName fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookName>(map);
  }

  static BookName fromJson(String json) {
    return ensureInitialized().decodeJson<BookName>(json);
  }
}

mixin BookNameMappable {
  String toJson() {
    return BookNameMapper.ensureInitialized()
        .encodeJson<BookName>(this as BookName);
  }

  Map<String, dynamic> toMap() {
    return BookNameMapper.ensureInitialized()
        .encodeMap<BookName>(this as BookName);
  }

  BookNameCopyWith<BookName, BookName, BookName> get copyWith =>
      _BookNameCopyWithImpl(this as BookName, $identity, $identity);
  @override
  String toString() {
    return BookNameMapper.ensureInitialized().stringifyValue(this as BookName);
  }

  @override
  bool operator ==(Object other) {
    return BookNameMapper.ensureInitialized()
        .equalsValue(this as BookName, other);
  }

  @override
  int get hashCode {
    return BookNameMapper.ensureInitialized().hashValue(this as BookName);
  }
}

extension BookNameValueCopy<$R, $Out> on ObjectCopyWith<$R, BookName, $Out> {
  BookNameCopyWith<$R, BookName, $Out> get $asBookName =>
      $base.as((v, t, t2) => _BookNameCopyWithImpl(v, t, t2));
}

abstract class BookNameCopyWith<$R, $In extends BookName, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name});
  BookNameCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookNameCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookName, $Out>
    implements BookNameCopyWith<$R, BookName, $Out> {
  _BookNameCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookName> $mapper =
      BookNameMapper.ensureInitialized();
  @override
  $R call({int? id, String? name}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (name != null) #name: name}));
  @override
  BookName $make(CopyWithData data) => BookName(
      id: data.get(#id, or: $value.id), name: data.get(#name, or: $value.name));

  @override
  BookNameCopyWith<$R2, BookName, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BookNameCopyWithImpl($value, $cast, t);
}
