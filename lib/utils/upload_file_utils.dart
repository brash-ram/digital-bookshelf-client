import 'dart:io';

import 'package:digital_bookshelf_client/data/data.dart';
import 'package:file_picker/file_picker.dart';
import 'package:global_configuration/global_configuration.dart';

Future<FileModel?> pickImage() async {
  final result = await FilePicker.platform.pickFiles(
    allowMultiple: false,
    type: FileType.custom,
    allowedExtensions: GlobalConfiguration().getValue<List<dynamic>>('allowedImageExtensions').map((e) => e.toString()).toList(),
  );

  if (result != null && result.files.isNotEmpty) {
    return FileModel()
      ..extension = result.files.first.extension!
      ..content = File(result.files.first.path!).readAsBytesSync();
  }

  return null;
}

Future<FileModel?> pickBook() async {
  final result = await FilePicker.platform.pickFiles(
    allowMultiple: false,
  );

  if (result != null && result.files.isNotEmpty) {

    if (!GlobalConfiguration().getValue<List<dynamic>>('allowedBookExtensions').contains(result.files.first.extension)) {
      throw Exception();
    }

    return FileModel()
      ..extension = result.files.first.extension!
      ..content = File(result.files.first.path!).readAsBytesSync();
  }

  return null;
}
