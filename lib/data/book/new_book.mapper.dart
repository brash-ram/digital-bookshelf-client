// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'new_book.dart';

class NewBookMapper extends ClassMapperBase<NewBook> {
  NewBookMapper._();

  static NewBookMapper? _instance;
  static NewBookMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewBookMapper._());
      PriceTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NewBook';

  static int _$id(NewBook v) => v.id;
  static const Field<NewBook, int> _f$id =
      Field('id', _$id, opt: true, def: -1);
  static int _$cover(NewBook v) => v.cover;
  static const Field<NewBook, int> _f$cover =
      Field('cover', _$cover, opt: true, def: -1);
  static List<String> _$genres(NewBook v) => v.genres;
  static const Field<NewBook, List<String>> _f$genres =
      Field('genres', _$genres, opt: true, def: const []);
  static List<String> _$tags(NewBook v) => v.tags;
  static const Field<NewBook, List<String>> _f$tags =
      Field('tags', _$tags, opt: true, def: const []);
  static int _$seriesId(NewBook v) => v.seriesId;
  static const Field<NewBook, int> _f$seriesId =
      Field('seriesId', _$seriesId, opt: true, def: -1);
  static String _$name(NewBook v) => v.name;
  static const Field<NewBook, String> _f$name =
      Field('name', _$name, opt: true, def: '');
  static String _$extension(NewBook v) => v.extension;
  static const Field<NewBook, String> _f$extension =
      Field('extension', _$extension, opt: true, def: '');
  static String _$description(NewBook v) => v.description;
  static const Field<NewBook, String> _f$description =
      Field('description', _$description, opt: true, def: '');
  static PriceType _$priceType(NewBook v) => v.priceType;
  static const Field<NewBook, PriceType> _f$priceType =
      Field('priceType', _$priceType, opt: true, def: PriceType.selling);
  static int _$price(NewBook v) => v.price;
  static const Field<NewBook, int> _f$price =
      Field('price', _$price, opt: true, def: 0);

  @override
  final MappableFields<NewBook> fields = const {
    #id: _f$id,
    #cover: _f$cover,
    #genres: _f$genres,
    #tags: _f$tags,
    #seriesId: _f$seriesId,
    #name: _f$name,
    #extension: _f$extension,
    #description: _f$description,
    #priceType: _f$priceType,
    #price: _f$price,
  };

  static NewBook _instantiate(DecodingData data) {
    return NewBook(
        id: data.dec(_f$id),
        cover: data.dec(_f$cover),
        genres: data.dec(_f$genres),
        tags: data.dec(_f$tags),
        seriesId: data.dec(_f$seriesId),
        name: data.dec(_f$name),
        extension: data.dec(_f$extension),
        description: data.dec(_f$description),
        priceType: data.dec(_f$priceType),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static NewBook fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NewBook>(map);
  }

  static NewBook fromJson(String json) {
    return ensureInitialized().decodeJson<NewBook>(json);
  }
}

mixin NewBookMappable {
  String toJson() {
    return NewBookMapper.ensureInitialized()
        .encodeJson<NewBook>(this as NewBook);
  }

  Map<String, dynamic> toMap() {
    return NewBookMapper.ensureInitialized()
        .encodeMap<NewBook>(this as NewBook);
  }

  NewBookCopyWith<NewBook, NewBook, NewBook> get copyWith =>
      _NewBookCopyWithImpl(this as NewBook, $identity, $identity);
  @override
  String toString() {
    return NewBookMapper.ensureInitialized().stringifyValue(this as NewBook);
  }

  @override
  bool operator ==(Object other) {
    return NewBookMapper.ensureInitialized()
        .equalsValue(this as NewBook, other);
  }

  @override
  int get hashCode {
    return NewBookMapper.ensureInitialized().hashValue(this as NewBook);
  }
}

extension NewBookValueCopy<$R, $Out> on ObjectCopyWith<$R, NewBook, $Out> {
  NewBookCopyWith<$R, NewBook, $Out> get $asNewBook =>
      $base.as((v, t, t2) => _NewBookCopyWithImpl(v, t, t2));
}

abstract class NewBookCopyWith<$R, $In extends NewBook, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genres;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags;
  $R call(
      {int? id,
      int? cover,
      List<String>? genres,
      List<String>? tags,
      int? seriesId,
      String? name,
      String? extension,
      String? description,
      PriceType? priceType,
      int? price});
  NewBookCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NewBookCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NewBook, $Out>
    implements NewBookCopyWith<$R, NewBook, $Out> {
  _NewBookCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NewBook> $mapper =
      NewBookMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get genres =>
      ListCopyWith($value.genres, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(genres: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags =>
      ListCopyWith($value.tags, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(tags: v));
  @override
  $R call(
          {int? id,
          int? cover,
          List<String>? genres,
          List<String>? tags,
          int? seriesId,
          String? name,
          String? extension,
          String? description,
          PriceType? priceType,
          int? price}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (cover != null) #cover: cover,
        if (genres != null) #genres: genres,
        if (tags != null) #tags: tags,
        if (seriesId != null) #seriesId: seriesId,
        if (name != null) #name: name,
        if (extension != null) #extension: extension,
        if (description != null) #description: description,
        if (priceType != null) #priceType: priceType,
        if (price != null) #price: price
      }));
  @override
  NewBook $make(CopyWithData data) => NewBook(
      id: data.get(#id, or: $value.id),
      cover: data.get(#cover, or: $value.cover),
      genres: data.get(#genres, or: $value.genres),
      tags: data.get(#tags, or: $value.tags),
      seriesId: data.get(#seriesId, or: $value.seriesId),
      name: data.get(#name, or: $value.name),
      extension: data.get(#extension, or: $value.extension),
      description: data.get(#description, or: $value.description),
      priceType: data.get(#priceType, or: $value.priceType),
      price: data.get(#price, or: $value.price));

  @override
  NewBookCopyWith<$R2, NewBook, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NewBookCopyWithImpl($value, $cast, t);
}
