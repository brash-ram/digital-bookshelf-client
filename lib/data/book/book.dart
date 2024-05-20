import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'book.mapper.dart';

@MappableClass()
class Book with BookMappable {

  Book({
    required this.id,
    required this.authorId,
    required this.name,
    required this.coverId,
    required this.genreNames,
    required this.tagNames,
    required this.series,
    required this.description,
    required this.priceType,
    required this.price,
    required this.lastUpdate,
    required this.createdAt,
  });

  final int id;
  final int authorId;
  final int coverId;
  final List<String> genreNames;
  final List<String> tagNames;
  final SimpleBookSeries series;
  final String name;
  final String description;
  final PriceType priceType;
  final int price;
  final DateTime lastUpdate;
  final DateTime createdAt;
}
