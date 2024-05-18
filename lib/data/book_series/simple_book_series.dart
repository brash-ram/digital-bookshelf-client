import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'simple_book_series.mapper.dart';

@MappableClass()
class SimpleBookSeries with SimpleBookSeriesMappable {

  SimpleBookSeries({
    required this.id,
    this.name = '',
    this.description = '',
  });

  final int id;

  String name;

  String description;

}
