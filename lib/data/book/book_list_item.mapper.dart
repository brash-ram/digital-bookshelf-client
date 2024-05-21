// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_list_item.dart';

class BookListItemMapper extends ClassMapperBase<BookListItem> {
  BookListItemMapper._();

  static BookListItemMapper? _instance;
  static BookListItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookListItemMapper._());
      ImageModelMapper.ensureInitialized();
      PriceTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BookListItem';

  static int _$id(BookListItem v) => v.id;
  static const Field<BookListItem, int> _f$id = Field('id', _$id);
  static String _$name(BookListItem v) => v.name;
  static const Field<BookListItem, String> _f$name = Field('name', _$name);
  static ImageModel _$cover(BookListItem v) => v.cover;
  static const Field<BookListItem, ImageModel> _f$cover =
      Field('cover', _$cover);
  static List<String> _$genreNames(BookListItem v) => v.genreNames;
  static const Field<BookListItem, List<String>> _f$genreNames =
      Field('genreNames', _$genreNames);
  static String _$authorName(BookListItem v) => v.authorName;
  static const Field<BookListItem, String> _f$authorName =
      Field('authorName', _$authorName);
  static String _$description(BookListItem v) => v.description;
  static const Field<BookListItem, String> _f$description =
      Field('description', _$description);
  static PriceType _$priceType(BookListItem v) => v.priceType;
  static const Field<BookListItem, PriceType> _f$priceType =
      Field('priceType', _$priceType);
  static int _$price(BookListItem v) => v.price;
  static const Field<BookListItem, int> _f$price = Field('price', _$price);
  static DateTime? _$lastUpdate(BookListItem v) => v.lastUpdate;
  static const Field<BookListItem, DateTime> _f$lastUpdate =
      Field('lastUpdate', _$lastUpdate, opt: true);
  static String? _$series(BookListItem v) => v.series;
  static const Field<BookListItem, String> _f$series =
      Field('series', _$series, opt: true);

  @override
  final MappableFields<BookListItem> fields = const {
    #id: _f$id,
    #name: _f$name,
    #cover: _f$cover,
    #genreNames: _f$genreNames,
    #authorName: _f$authorName,
    #description: _f$description,
    #priceType: _f$priceType,
    #price: _f$price,
    #lastUpdate: _f$lastUpdate,
    #series: _f$series,
  };

  static BookListItem _instantiate(DecodingData data) {
    return BookListItem(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        cover: data.dec(_f$cover),
        genreNames: data.dec(_f$genreNames),
        authorName: data.dec(_f$authorName),
        description: data.dec(_f$description),
        priceType: data.dec(_f$priceType),
        price: data.dec(_f$price),
        lastUpdate: data.dec(_f$lastUpdate),
        series: data.dec(_f$series));
  }

  @override
  final Function instantiate = _instantiate;

  static BookListItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookListItem>(map);
  }

  static BookListItem fromJson(String json) {
    return ensureInitialized().decodeJson<BookListItem>(json);
  }
}

mixin BookListItemMappable {
  String toJson() {
    return BookListItemMapper.ensureInitialized()
        .encodeJson<BookListItem>(this as BookListItem);
  }

  Map<String, dynamic> toMap() {
    return BookListItemMapper.ensureInitialized()
        .encodeMap<BookListItem>(this as BookListItem);
  }

  BookListItemCopyWith<BookListItem, BookListItem, BookListItem> get copyWith =>
      _BookListItemCopyWithImpl(this as BookListItem, $identity, $identity);
  @override
  String toString() {
    return BookListItemMapper.ensureInitialized()
        .stringifyValue(this as BookListItem);
  }

  @override
  bool operator ==(Object other) {
    return BookListItemMapper.ensureInitialized()
        .equalsValue(this as BookListItem, other);
  }

  @override
  int get hashCode {
    return BookListItemMapper.ensureInitialized()
        .hashValue(this as BookListItem);
  }
}

extension BookListItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BookListItem, $Out> {
  BookListItemCopyWith<$R, BookListItem, $Out> get $asBookListItem =>
      $base.as((v, t, t2) => _BookListItemCopyWithImpl(v, t, t2));
}

abstract class BookListItemCopyWith<$R, $In extends BookListItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ImageModelCopyWith<$R, ImageModel, ImageModel> get cover;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genreNames;
  $R call(
      {int? id,
      String? name,
      ImageModel? cover,
      List<String>? genreNames,
      String? authorName,
      String? description,
      PriceType? priceType,
      int? price,
      DateTime? lastUpdate,
      String? series});
  BookListItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookListItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookListItem, $Out>
    implements BookListItemCopyWith<$R, BookListItem, $Out> {
  _BookListItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookListItem> $mapper =
      BookListItemMapper.ensureInitialized();
  @override
  ImageModelCopyWith<$R, ImageModel, ImageModel> get cover =>
      $value.cover.copyWith.$chain((v) => call(cover: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genreNames =>
      ListCopyWith($value.genreNames, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(genreNames: v));
  @override
  $R call(
          {int? id,
          String? name,
          ImageModel? cover,
          List<String>? genreNames,
          String? authorName,
          String? description,
          PriceType? priceType,
          int? price,
          Object? lastUpdate = $none,
          Object? series = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (cover != null) #cover: cover,
        if (genreNames != null) #genreNames: genreNames,
        if (authorName != null) #authorName: authorName,
        if (description != null) #description: description,
        if (priceType != null) #priceType: priceType,
        if (price != null) #price: price,
        if (lastUpdate != $none) #lastUpdate: lastUpdate,
        if (series != $none) #series: series
      }));
  @override
  BookListItem $make(CopyWithData data) => BookListItem(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      cover: data.get(#cover, or: $value.cover),
      genreNames: data.get(#genreNames, or: $value.genreNames),
      authorName: data.get(#authorName, or: $value.authorName),
      description: data.get(#description, or: $value.description),
      priceType: data.get(#priceType, or: $value.priceType),
      price: data.get(#price, or: $value.price),
      lastUpdate: data.get(#lastUpdate, or: $value.lastUpdate),
      series: data.get(#series, or: $value.series));

  @override
  BookListItemCopyWith<$R2, BookListItem, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BookListItemCopyWithImpl($value, $cast, t);
}
