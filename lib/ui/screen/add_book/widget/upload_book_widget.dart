import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/utils/upload_file_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadBookWidget extends StatefulWidget {
  const UploadBookWidget({super.key});

  @override
  State<UploadBookWidget> createState() => _UploadBookWidgetState();
}

class _UploadBookWidgetState extends State<UploadBookWidget> {
  @override
  Widget build(BuildContext context) {
    final hasBook = context.read<BookFiles>().bookFile.content.isNotEmpty;
    final T = Translations.of(context);
    return Column(
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: defaultRadius,
              color: Theme.of(context).colorScheme.surface,
              border: Border.all(
                color: hasBook ?
                Theme.of(context).colorScheme.tertiary :
                Theme.of(context).colorScheme.primary,
              ),
            ),
            child: InkWell(
              onTap: () async {
                late FileModel? result;
                try {
                  result = await pickBook();
                } catch (ex) {
                  if (context.mounted)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(T.addBook.invalidBookExtension),
                      ),
                    );
                  return;
                }

                if (result != null && context.mounted) {
                  context.read<BookFiles>().bookFile = result;
                  setState(() {});
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(defaultValue),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        hasBook ? T.addBook.changeBookFile : T.addBook.addBookFile,
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: smallValue,),
                      if (hasBook) Text(
                        T.addBook.bookUploaded,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ) else const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          T.addBook.bookExtensions,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
