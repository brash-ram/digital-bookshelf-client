import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'book.mapper.dart';

@MappableClass()
class Book with BookMappable {

  Book({
    required this.id,
    required this.authorId,
    required this.name,
    required this.cover,
    required this.genreNames,
    required this.tagNames,
    required this.description,
    required this.priceType,
    required this.price,
    required this.lastUpdate,
    required this.createdAt,
    required this.isInLibrary,
    this.series,
  });

  final int id;
  final int authorId;
  final ImageModel cover;
  final List<String> genreNames;
  final List<String> tagNames;
  final SimpleBookSeries? series;
  final String name;
  final String description;
  final PriceType priceType;
  final int price;
  final DateTime lastUpdate;
  final DateTime createdAt;

  @MappableField(key: 'inLibrary')
  final bool isInLibrary;
}
