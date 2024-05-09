// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_model.dart';

class ImageModelMapper extends ClassMapperBase<ImageModel> {
  ImageModelMapper._();

  static ImageModelMapper? _instance;
  static ImageModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageModel';

  static int _$id(ImageModel v) => v.id;
  static const Field<ImageModel, int> _f$id = Field('id', _$id);
  static String _$blurhash(ImageModel v) => v.blurhash;
  static const Field<ImageModel, String> _f$blurhash =
      Field('blurhash', _$blurhash);

  @override
  final MappableFields<ImageModel> fields = const {
    #id: _f$id,
    #blurhash: _f$blurhash,
  };

  static ImageModel _instantiate(DecodingData data) {
    return ImageModel(id: data.dec(_f$id), blurhash: data.dec(_f$blurhash));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageModel>(map);
  }

  static ImageModel fromJson(String json) {
    return ensureInitialized().decodeJson<ImageModel>(json);
  }
}

mixin ImageModelMappable {
  String toJson() {
    return ImageModelMapper.ensureInitialized()
        .encodeJson<ImageModel>(this as ImageModel);
  }

  Map<String, dynamic> toMap() {
    return ImageModelMapper.ensureInitialized()
        .encodeMap<ImageModel>(this as ImageModel);
  }

  ImageModelCopyWith<ImageModel, ImageModel, ImageModel> get copyWith =>
      _ImageModelCopyWithImpl(this as ImageModel, $identity, $identity);
  @override
  String toString() {
    return ImageModelMapper.ensureInitialized()
        .stringifyValue(this as ImageModel);
  }

  @override
  bool operator ==(Object other) {
    return ImageModelMapper.ensureInitialized()
        .equalsValue(this as ImageModel, other);
  }

  @override
  int get hashCode {
    return ImageModelMapper.ensureInitialized().hashValue(this as ImageModel);
  }
}

extension ImageModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageModel, $Out> {
  ImageModelCopyWith<$R, ImageModel, $Out> get $asImageModel =>
      $base.as((v, t, t2) => _ImageModelCopyWithImpl(v, t, t2));
}

abstract class ImageModelCopyWith<$R, $In extends ImageModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? blurhash});
  ImageModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageModel, $Out>
    implements ImageModelCopyWith<$R, ImageModel, $Out> {
  _ImageModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageModel> $mapper =
      ImageModelMapper.ensureInitialized();
  @override
  $R call({int? id, String? blurhash}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (blurhash != null) #blurhash: blurhash}));
  @override
  ImageModel $make(CopyWithData data) => ImageModel(
      id: data.get(#id, or: $value.id),
      blurhash: data.get(#blurhash, or: $value.blurhash));

  @override
  ImageModelCopyWith<$R2, ImageModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageModelCopyWithImpl($value, $cast, t);
}
