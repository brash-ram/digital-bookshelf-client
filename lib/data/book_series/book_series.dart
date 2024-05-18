import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'book_series.mapper.dart';

@MappableClass()
class BookSeries extends SimpleBookSeries with BookSeriesMappable {

  BookSeries({
    required this.authorId,
    required this.bookIds,
    required super.id,
    super.name,
    super.description,
  });

  final int authorId;
  final List<int> bookIds;
}
