import 'package:dart_mappable/dart_mappable.dart';

part 'book_name.mapper.dart';

@MappableClass()
class BookName with BookNameMappable {

  BookName({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}
