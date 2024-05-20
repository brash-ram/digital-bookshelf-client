// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book.dart';

class BookMapper extends ClassMapperBase<Book> {
  BookMapper._();

  static BookMapper? _instance;
  static BookMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookMapper._());
      SimpleBookSeriesMapper.ensureInitialized();
      PriceTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Book';

  static int _$id(Book v) => v.id;
  static const Field<Book, int> _f$id = Field('id', _$id);
  static int _$authorId(Book v) => v.authorId;
  static const Field<Book, int> _f$authorId = Field('authorId', _$authorId);
  static String _$name(Book v) => v.name;
  static const Field<Book, String> _f$name = Field('name', _$name);
  static int _$coverId(Book v) => v.coverId;
  static const Field<Book, int> _f$coverId = Field('coverId', _$coverId);
  static List<String> _$genreNames(Book v) => v.genreNames;
  static const Field<Book, List<String>> _f$genreNames =
      Field('genreNames', _$genreNames);
  static List<String> _$tagNames(Book v) => v.tagNames;
  static const Field<Book, List<String>> _f$tagNames =
      Field('tagNames', _$tagNames);
  static SimpleBookSeries _$series(Book v) => v.series;
  static const Field<Book, SimpleBookSeries> _f$series =
      Field('series', _$series);
  static String _$description(Book v) => v.description;
  static const Field<Book, String> _f$description =
      Field('description', _$description);
  static PriceType _$priceType(Book v) => v.priceType;
  static const Field<Book, PriceType> _f$priceType =
      Field('priceType', _$priceType);
  static int _$price(Book v) => v.price;
  static const Field<Book, int> _f$price = Field('price', _$price);
  static DateTime _$lastUpdate(Book v) => v.lastUpdate;
  static const Field<Book, DateTime> _f$lastUpdate =
      Field('lastUpdate', _$lastUpdate);
  static DateTime _$createdAt(Book v) => v.createdAt;
  static const Field<Book, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<Book> fields = const {
    #id: _f$id,
    #authorId: _f$authorId,
    #name: _f$name,
    #coverId: _f$coverId,
    #genreNames: _f$genreNames,
    #tagNames: _f$tagNames,
    #series: _f$series,
    #description: _f$description,
    #priceType: _f$priceType,
    #price: _f$price,
    #lastUpdate: _f$lastUpdate,
    #createdAt: _f$createdAt,
  };

  static Book _instantiate(DecodingData data) {
    return Book(
        id: data.dec(_f$id),
        authorId: data.dec(_f$authorId),
        name: data.dec(_f$name),
        coverId: data.dec(_f$coverId),
        genreNames: data.dec(_f$genreNames),
        tagNames: data.dec(_f$tagNames),
        series: data.dec(_f$series),
        description: data.dec(_f$description),
        priceType: data.dec(_f$priceType),
        price: data.dec(_f$price),
        lastUpdate: data.dec(_f$lastUpdate),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static Book fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Book>(map);
  }

  static Book fromJson(String json) {
    return ensureInitialized().decodeJson<Book>(json);
  }
}

mixin BookMappable {
  String toJson() {
    return BookMapper.ensureInitialized().encodeJson<Book>(this as Book);
  }

  Map<String, dynamic> toMap() {
    return BookMapper.ensureInitialized().encodeMap<Book>(this as Book);
  }

  BookCopyWith<Book, Book, Book> get copyWith =>
      _BookCopyWithImpl(this as Book, $identity, $identity);
  @override
  String toString() {
    return BookMapper.ensureInitialized().stringifyValue(this as Book);
  }

  @override
  bool operator ==(Object other) {
    return BookMapper.ensureInitialized().equalsValue(this as Book, other);
  }

  @override
  int get hashCode {
    return BookMapper.ensureInitialized().hashValue(this as Book);
  }
}

extension BookValueCopy<$R, $Out> on ObjectCopyWith<$R, Book, $Out> {
  BookCopyWith<$R, Book, $Out> get $asBook =>
      $base.as((v, t, t2) => _BookCopyWithImpl(v, t, t2));
}

abstract class BookCopyWith<$R, $In extends Book, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genreNames;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tagNames;
  SimpleBookSeriesCopyWith<$R, SimpleBookSeries, SimpleBookSeries> get series;
  $R call(
      {int? id,
      int? authorId,
      String? name,
      int? coverId,
      List<String>? genreNames,
      List<String>? tagNames,
      SimpleBookSeries? series,
      String? description,
      PriceType? priceType,
      int? price,
      DateTime? lastUpdate,
      DateTime? createdAt});
  BookCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Book, $Out>
    implements BookCopyWith<$R, Book, $Out> {
  _BookCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Book> $mapper = BookMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genreNames =>
      ListCopyWith($value.genreNames, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(genreNames: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tagNames =>
      ListCopyWith($value.tagNames, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(tagNames: v));
  @override
  SimpleBookSeriesCopyWith<$R, SimpleBookSeries, SimpleBookSeries> get series =>
      $value.series.copyWith.$chain((v) => call(series: v));
  @override
  $R call(
          {int? id,
          int? authorId,
          String? name,
          int? coverId,
          List<String>? genreNames,
          List<String>? tagNames,
          SimpleBookSeries? series,
          String? description,
          PriceType? priceType,
          int? price,
          DateTime? lastUpdate,
          DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (authorId != null) #authorId: authorId,
        if (name != null) #name: name,
        if (coverId != null) #coverId: coverId,
        if (genreNames != null) #genreNames: genreNames,
        if (tagNames != null) #tagNames: tagNames,
        if (series != null) #series: series,
        if (description != null) #description: description,
        if (priceType != null) #priceType: priceType,
        if (price != null) #price: price,
        if (lastUpdate != null) #lastUpdate: lastUpdate,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  Book $make(CopyWithData data) => Book(
      id: data.get(#id, or: $value.id),
      authorId: data.get(#authorId, or: $value.authorId),
      name: data.get(#name, or: $value.name),
      coverId: data.get(#coverId, or: $value.coverId),
      genreNames: data.get(#genreNames, or: $value.genreNames),
      tagNames: data.get(#tagNames, or: $value.tagNames),
      series: data.get(#series, or: $value.series),
      description: data.get(#description, or: $value.description),
      priceType: data.get(#priceType, or: $value.priceType),
      price: data.get(#price, or: $value.price),
      lastUpdate: data.get(#lastUpdate, or: $value.lastUpdate),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  BookCopyWith<$R2, Book, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BookCopyWithImpl($value, $cast, t);
}
