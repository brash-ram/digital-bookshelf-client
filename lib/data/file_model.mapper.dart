// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'file_model.dart';

class FileModelMapper extends ClassMapperBase<FileModel> {
  FileModelMapper._();

  static FileModelMapper? _instance;
  static FileModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FileModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FileModel';

  static String _$extension(FileModel v) => v.extension;
  static const Field<FileModel, String> _f$extension =
      Field('extension', _$extension, mode: FieldMode.member);
  static Uint8List _$content(FileModel v) => v.content;
  static const Field<FileModel, Uint8List> _f$content =
      Field('content', _$content, mode: FieldMode.member);

  @override
  final MappableFields<FileModel> fields = const {
    #extension: _f$extension,
    #content: _f$content,
  };

  static FileModel _instantiate(DecodingData data) {
    return FileModel();
  }

  @override
  final Function instantiate = _instantiate;

  static FileModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FileModel>(map);
  }

  static FileModel fromJson(String json) {
    return ensureInitialized().decodeJson<FileModel>(json);
  }
}

mixin FileModelMappable {
  String toJson() {
    return FileModelMapper.ensureInitialized()
        .encodeJson<FileModel>(this as FileModel);
  }

  Map<String, dynamic> toMap() {
    return FileModelMapper.ensureInitialized()
        .encodeMap<FileModel>(this as FileModel);
  }

  FileModelCopyWith<FileModel, FileModel, FileModel> get copyWith =>
      _FileModelCopyWithImpl(this as FileModel, $identity, $identity);
  @override
  String toString() {
    return FileModelMapper.ensureInitialized()
        .stringifyValue(this as FileModel);
  }

  @override
  bool operator ==(Object other) {
    return FileModelMapper.ensureInitialized()
        .equalsValue(this as FileModel, other);
  }

  @override
  int get hashCode {
    return FileModelMapper.ensureInitialized().hashValue(this as FileModel);
  }
}

extension FileModelValueCopy<$R, $Out> on ObjectCopyWith<$R, FileModel, $Out> {
  FileModelCopyWith<$R, FileModel, $Out> get $asFileModel =>
      $base.as((v, t, t2) => _FileModelCopyWithImpl(v, t, t2));
}

abstract class FileModelCopyWith<$R, $In extends FileModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  FileModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FileModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FileModel, $Out>
    implements FileModelCopyWith<$R, FileModel, $Out> {
  _FileModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FileModel> $mapper =
      FileModelMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  FileModel $make(CopyWithData data) => FileModel();

  @override
  FileModelCopyWith<$R2, FileModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FileModelCopyWithImpl($value, $cast, t);
}
