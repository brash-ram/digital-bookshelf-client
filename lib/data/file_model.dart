import 'dart:typed_data';

import 'package:dart_mappable/dart_mappable.dart';

part 'file_model.mapper.dart';

@MappableClass()
class FileModel with FileModelMappable {

  String extension = '';

  Uint8List content = Uint8List.fromList([]);
}
