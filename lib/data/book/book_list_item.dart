import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'book_list_item.mapper.dart';

@MappableClass()
class BookListItem with BookListItemMappable {

  BookListItem({
    required this.id,
    required this.name,
    required this.cover,
    required this.genreNames,
    required this.authorName,
    required this.description,
    required this.priceType,
    required this.price,
    this.lastUpdate,
    this.series,
  });

  final int id;
  final ImageModel cover;
  final List<String> genreNames;
  final String authorName;
  final String? series;
  final String name;
  final String description;
  final PriceType priceType;
  final int price;
  final DateTime? lastUpdate;
}
