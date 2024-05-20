import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/utils/upload_file_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadImageFile extends StatefulWidget {
  const UploadImageFile({super.key});

  @override
  State<UploadImageFile> createState() => _UploadImageFileState();
}

class _UploadImageFileState extends State<UploadImageFile> {

  @override
  Widget build(BuildContext context) {
    final hasImage = context.read<BookFiles>().coverFile.content.isNotEmpty;
    final T = Translations.of(context);
    return Column(
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: defaultRadius,
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                color: hasImage ?
                Theme.of(context).colorScheme.tertiary :
                Theme.of(context).colorScheme.primary,
              ),
            ),
            child: InkWell(
              onTap: () async {
                final result = await pickImage();
                if (result != null && context.mounted) {
                  context.read<BookFiles>().coverFile = result;
                  setState(() {});
                }
              },
              child: hasImage ? Padding(
                padding: const EdgeInsets.all(smallValue),
                child: Image.memory(context.read<BookFiles>().coverFile.content),
              ) :
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(defaultValue),
                  child: Text(
                    T.addBook.addBookCover,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          T.addBook.imageExtensions,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
