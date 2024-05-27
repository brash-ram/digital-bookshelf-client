import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'purchased_book.mapper.dart';

@MappableClass()
class PurchasedBook with PurchasedBookMappable {

  PurchasedBook({
    required this.price,
    required this.book,
    required this.createdAt,
  });

  final BookListItem book;

  final int price;

  final DateTime createdAt;
}
