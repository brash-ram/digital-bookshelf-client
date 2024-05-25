// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'author_info.dart';

class AuthorInfoMapper extends ClassMapperBase<AuthorInfo> {
  AuthorInfoMapper._();

  static AuthorInfoMapper? _instance;
  static AuthorInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthorInfoMapper._());
      BookListItemMapper.ensureInitialized();
      SimpleBookSeriesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthorInfo';

  static int _$id(AuthorInfo v) => v.id;
  static const Field<AuthorInfo, int> _f$id = Field('id', _$id);
  static int _$userId(AuthorInfo v) => v.userId;
  static const Field<AuthorInfo, int> _f$userId = Field('userId', _$userId);
  static List<BookListItem> _$books(AuthorInfo v) => v.books;
  static const Field<AuthorInfo, List<BookListItem>> _f$books =
      Field('books', _$books);
  static List<SimpleBookSeries> _$series(AuthorInfo v) => v.series;
  static const Field<AuthorInfo, List<SimpleBookSeries>> _f$series =
      Field('series', _$series);

  @override
  final MappableFields<AuthorInfo> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #books: _f$books,
    #series: _f$series,
  };

  static AuthorInfo _instantiate(DecodingData data) {
    return AuthorInfo(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        books: data.dec(_f$books),
        series: data.dec(_f$series));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthorInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthorInfo>(map);
  }

  static AuthorInfo fromJson(String json) {
    return ensureInitialized().decodeJson<AuthorInfo>(json);
  }
}

mixin AuthorInfoMappable {
  String toJson() {
    return AuthorInfoMapper.ensureInitialized()
        .encodeJson<AuthorInfo>(this as AuthorInfo);
  }

  Map<String, dynamic> toMap() {
    return AuthorInfoMapper.ensureInitialized()
        .encodeMap<AuthorInfo>(this as AuthorInfo);
  }

  AuthorInfoCopyWith<AuthorInfo, AuthorInfo, AuthorInfo> get copyWith =>
      _AuthorInfoCopyWithImpl(this as AuthorInfo, $identity, $identity);
  @override
  String toString() {
    return AuthorInfoMapper.ensureInitialized()
        .stringifyValue(this as AuthorInfo);
  }

  @override
  bool operator ==(Object other) {
    return AuthorInfoMapper.ensureInitialized()
        .equalsValue(this as AuthorInfo, other);
  }

  @override
  int get hashCode {
    return AuthorInfoMapper.ensureInitialized().hashValue(this as AuthorInfo);
  }
}

extension AuthorInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthorInfo, $Out> {
  AuthorInfoCopyWith<$R, AuthorInfo, $Out> get $asAuthorInfo =>
      $base.as((v, t, t2) => _AuthorInfoCopyWithImpl(v, t, t2));
}

abstract class AuthorInfoCopyWith<$R, $In extends AuthorInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, BookListItem,
      BookListItemCopyWith<$R, BookListItem, BookListItem>> get books;
  ListCopyWith<$R, SimpleBookSeries,
          SimpleBookSeriesCopyWith<$R, SimpleBookSeries, SimpleBookSeries>>
      get series;
  $R call(
      {int? id,
      int? userId,
      List<BookListItem>? books,
      List<SimpleBookSeries>? series});
  AuthorInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthorInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthorInfo, $Out>
    implements AuthorInfoCopyWith<$R, AuthorInfo, $Out> {
  _AuthorInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthorInfo> $mapper =
      AuthorInfoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, BookListItem,
          BookListItemCopyWith<$R, BookListItem, BookListItem>>
      get books => ListCopyWith(
          $value.books, (v, t) => v.copyWith.$chain(t), (v) => call(books: v));
  @override
  ListCopyWith<$R, SimpleBookSeries,
          SimpleBookSeriesCopyWith<$R, SimpleBookSeries, SimpleBookSeries>>
      get series => ListCopyWith($value.series, (v, t) => v.copyWith.$chain(t),
          (v) => call(series: v));
  @override
  $R call(
          {int? id,
          int? userId,
          List<BookListItem>? books,
          List<SimpleBookSeries>? series}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (userId != null) #userId: userId,
        if (books != null) #books: books,
        if (series != null) #series: series
      }));
  @override
  AuthorInfo $make(CopyWithData data) => AuthorInfo(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      books: data.get(#books, or: $value.books),
      series: data.get(#series, or: $value.series));

  @override
  AuthorInfoCopyWith<$R2, AuthorInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthorInfoCopyWithImpl($value, $cast, t);
}
