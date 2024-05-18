// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_series.dart';

class BookSeriesMapper extends ClassMapperBase<BookSeries> {
  BookSeriesMapper._();

  static BookSeriesMapper? _instance;
  static BookSeriesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookSeriesMapper._());
      SimpleBookSeriesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BookSeries';

  static int _$authorId(BookSeries v) => v.authorId;
  static const Field<BookSeries, int> _f$authorId =
      Field('authorId', _$authorId);
  static List<int> _$bookIds(BookSeries v) => v.bookIds;
  static const Field<BookSeries, List<int>> _f$bookIds =
      Field('bookIds', _$bookIds);
  static int _$id(BookSeries v) => v.id;
  static const Field<BookSeries, int> _f$id = Field('id', _$id);
  static String _$name(BookSeries v) => v.name;
  static const Field<BookSeries, String> _f$name =
      Field('name', _$name, opt: true, def: '');
  static String _$description(BookSeries v) => v.description;
  static const Field<BookSeries, String> _f$description =
      Field('description', _$description, opt: true, def: '');

  @override
  final MappableFields<BookSeries> fields = const {
    #authorId: _f$authorId,
    #bookIds: _f$bookIds,
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
  };

  static BookSeries _instantiate(DecodingData data) {
    return BookSeries(
        authorId: data.dec(_f$authorId),
        bookIds: data.dec(_f$bookIds),
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static BookSeries fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookSeries>(map);
  }

  static BookSeries fromJson(String json) {
    return ensureInitialized().decodeJson<BookSeries>(json);
  }
}

mixin BookSeriesMappable {
  String toJson() {
    return BookSeriesMapper.ensureInitialized()
        .encodeJson<BookSeries>(this as BookSeries);
  }

  Map<String, dynamic> toMap() {
    return BookSeriesMapper.ensureInitialized()
        .encodeMap<BookSeries>(this as BookSeries);
  }

  BookSeriesCopyWith<BookSeries, BookSeries, BookSeries> get copyWith =>
      _BookSeriesCopyWithImpl(this as BookSeries, $identity, $identity);
  @override
  String toString() {
    return BookSeriesMapper.ensureInitialized()
        .stringifyValue(this as BookSeries);
  }

  @override
  bool operator ==(Object other) {
    return BookSeriesMapper.ensureInitialized()
        .equalsValue(this as BookSeries, other);
  }

  @override
  int get hashCode {
    return BookSeriesMapper.ensureInitialized().hashValue(this as BookSeries);
  }
}

extension BookSeriesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BookSeries, $Out> {
  BookSeriesCopyWith<$R, BookSeries, $Out> get $asBookSeries =>
      $base.as((v, t, t2) => _BookSeriesCopyWithImpl(v, t, t2));
}

abstract class BookSeriesCopyWith<$R, $In extends BookSeries, $Out>
    implements SimpleBookSeriesCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get bookIds;
  @override
  $R call(
      {int? authorId,
      List<int>? bookIds,
      int? id,
      String? name,
      String? description});
  BookSeriesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookSeriesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookSeries, $Out>
    implements BookSeriesCopyWith<$R, BookSeries, $Out> {
  _BookSeriesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookSeries> $mapper =
      BookSeriesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get bookIds =>
      ListCopyWith($value.bookIds, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(bookIds: v));
  @override
  $R call(
          {int? authorId,
          List<int>? bookIds,
          int? id,
          String? name,
          String? description}) =>
      $apply(FieldCopyWithData({
        if (authorId != null) #authorId: authorId,
        if (bookIds != null) #bookIds: bookIds,
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (description != null) #description: description
      }));
  @override
  BookSeries $make(CopyWithData data) => BookSeries(
      authorId: data.get(#authorId, or: $value.authorId),
      bookIds: data.get(#bookIds, or: $value.bookIds),
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description));

  @override
  BookSeriesCopyWith<$R2, BookSeries, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BookSeriesCopyWithImpl($value, $cast, t);
}
