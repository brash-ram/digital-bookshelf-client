// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'purchased_book.dart';

class PurchasedBookMapper extends ClassMapperBase<PurchasedBook> {
  PurchasedBookMapper._();

  static PurchasedBookMapper? _instance;
  static PurchasedBookMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PurchasedBookMapper._());
      BookListItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PurchasedBook';

  static int _$price(PurchasedBook v) => v.price;
  static const Field<PurchasedBook, int> _f$price = Field('price', _$price);
  static BookListItem _$book(PurchasedBook v) => v.book;
  static const Field<PurchasedBook, BookListItem> _f$book =
      Field('book', _$book);
  static DateTime _$createdAt(PurchasedBook v) => v.createdAt;
  static const Field<PurchasedBook, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);

  @override
  final MappableFields<PurchasedBook> fields = const {
    #price: _f$price,
    #book: _f$book,
    #createdAt: _f$createdAt,
  };

  static PurchasedBook _instantiate(DecodingData data) {
    return PurchasedBook(
        price: data.dec(_f$price),
        book: data.dec(_f$book),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static PurchasedBook fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PurchasedBook>(map);
  }

  static PurchasedBook fromJson(String json) {
    return ensureInitialized().decodeJson<PurchasedBook>(json);
  }
}

mixin PurchasedBookMappable {
  String toJson() {
    return PurchasedBookMapper.ensureInitialized()
        .encodeJson<PurchasedBook>(this as PurchasedBook);
  }

  Map<String, dynamic> toMap() {
    return PurchasedBookMapper.ensureInitialized()
        .encodeMap<PurchasedBook>(this as PurchasedBook);
  }

  PurchasedBookCopyWith<PurchasedBook, PurchasedBook, PurchasedBook>
      get copyWith => _PurchasedBookCopyWithImpl(
          this as PurchasedBook, $identity, $identity);
  @override
  String toString() {
    return PurchasedBookMapper.ensureInitialized()
        .stringifyValue(this as PurchasedBook);
  }

  @override
  bool operator ==(Object other) {
    return PurchasedBookMapper.ensureInitialized()
        .equalsValue(this as PurchasedBook, other);
  }

  @override
  int get hashCode {
    return PurchasedBookMapper.ensureInitialized()
        .hashValue(this as PurchasedBook);
  }
}

extension PurchasedBookValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PurchasedBook, $Out> {
  PurchasedBookCopyWith<$R, PurchasedBook, $Out> get $asPurchasedBook =>
      $base.as((v, t, t2) => _PurchasedBookCopyWithImpl(v, t, t2));
}

abstract class PurchasedBookCopyWith<$R, $In extends PurchasedBook, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BookListItemCopyWith<$R, BookListItem, BookListItem> get book;
  $R call({int? price, BookListItem? book, DateTime? createdAt});
  PurchasedBookCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PurchasedBookCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PurchasedBook, $Out>
    implements PurchasedBookCopyWith<$R, PurchasedBook, $Out> {
  _PurchasedBookCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PurchasedBook> $mapper =
      PurchasedBookMapper.ensureInitialized();
  @override
  BookListItemCopyWith<$R, BookListItem, BookListItem> get book =>
      $value.book.copyWith.$chain((v) => call(book: v));
  @override
  $R call({int? price, BookListItem? book, DateTime? createdAt}) =>
      $apply(FieldCopyWithData({
        if (price != null) #price: price,
        if (book != null) #book: book,
        if (createdAt != null) #createdAt: createdAt
      }));
  @override
  PurchasedBook $make(CopyWithData data) => PurchasedBook(
      price: data.get(#price, or: $value.price),
      book: data.get(#book, or: $value.book),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  PurchasedBookCopyWith<$R2, PurchasedBook, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PurchasedBookCopyWithImpl($value, $cast, t);
}
