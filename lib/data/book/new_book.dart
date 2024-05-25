import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/styles.dart';

part 'new_book.mapper.dart';

@MappableClass()
class NewBook with NewBookMappable {

  NewBook({
    required this.genres,
    required this.tags,
    this.id = -1,
    this.cover = -1,
    this.seriesId = -1,
    this.name = '',
    this.extension = '',
    this.description = '',
    this.priceType = PriceType.selling,
    this.price = 0,
  });
  int id;

  int cover;
  String extension;

  List<String> genres;
  List<String> tags;

  int seriesId;
  String name;
  String description;
  PriceType priceType;
  int price;
}
