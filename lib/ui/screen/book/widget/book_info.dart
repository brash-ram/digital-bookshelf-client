import 'package:digital_bookshelf_client/bloc/book_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/book/widget/book_info_text.dart';
import 'package:digital_bookshelf_client/ui/widget/blurhash_image.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<BookBloc, Book, Book>(
    selector: (e) => e,
    builder: (context, data) => Row(
      children: [
        SizedBox(
          height: 150.0,
          width: 100.0,
          child: BlurhashImage(
            image: data.cover,
          ),
        ),
        const SizedBox(width: smallValue,),
        const Expanded(
          child: BookInfoText(),
        ),
      ],
    ),
  );
}
