import 'package:dart_mappable/dart_mappable.dart';
import 'package:digital_bookshelf_client/data/data.dart';

part 'author_info.mapper.dart';

@MappableClass()
class AuthorInfo with AuthorInfoMappable {

  AuthorInfo({
    required this.id,
    required this.userId,
    required this.books,
    required this.series,
  });

  final int id;

  final int userId;

  final List<BookListItem> books;

  final List<SimpleBookSeries> series;
}
