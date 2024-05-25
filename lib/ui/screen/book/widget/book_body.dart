import 'package:digital_bookshelf_client/bloc/book_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/book/widget/book_info.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class BookBody extends StatelessWidget {
  const BookBody({super.key});

  @override
  Widget build(BuildContext context) =>
    CustomScrollView(
      slivers: [
        SliverList.list(
          children: [
            const BookInfo(),
            const SizedBox(height: defaultValue,),
            ModelBlocDataSelector<BookBloc, Book, String>(
              selector: (e) => e.description,
              builder: (context, data) => RichText(
                text: TextSpan(
                  text: '${Translations.of(context).book.description}: ',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: data,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ],
    );
}
