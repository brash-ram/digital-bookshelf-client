import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/styles.dart';

part 'new_book.mapper.dart';

@MappableClass()
class NewBook with NewBookMappable {

  int id = -1;

  int cover = -1;
  String extension = '';

  List<String> genres = [];
  List<String> tags = [];

  int seriesId = -1;
  String name = '';
  String description = '';
  PriceType priceType = PriceType.selling;
  int price = 0;
}
