import 'package:dart_mappable/dart_mappable.dart';

part 'image_model.mapper.dart';

@MappableClass()
class ImageModel with ImageModelMappable {

  ImageModel({required this.id, required this.blurhash});

  final int id;

  final String blurhash;
}
