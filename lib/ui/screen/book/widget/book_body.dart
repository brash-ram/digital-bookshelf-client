import 'package:digital_bookshelf_client/bloc/book_bloc.dart';
import 'package:digital_bookshelf_client/bloc/similar_books_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/book/widget/book_buttons.dart';
import 'package:digital_bookshelf_client/ui/screen/book/widget/book_info.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list_item/book_list_item_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookBody extends StatelessWidget {
  const BookBody({super.key});

  @override
  Widget build(BuildContext context) {
    final T = Translations.of(context);
    return ModelBlocDataSelector<BookBloc, Book, String>(
      selector: (e) => e.description,
      builder: (context, data) => ModelBlocDataSelector<SimilarBooksBloc, List<BookListItem>, List<BookListItem>>(
        selector: (e) => e,
        builder: (context, books) => CustomScrollView(
          slivers: [
            SliverList.list(
              children: [
                const BookInfo(),
                const SizedBox(height: defaultValue,),
                const BookButtons(),
                const SizedBox(height: defaultValue,),
                ModelBlocDataSelector<BookBloc, Book, int>(
                  selector: (e) => e.numberPurchase,
                  builder: (context, data) => RichText(
                    text: TextSpan(
                      text: '${Translations.of(context).book.numberPurchase}: ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: data.toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SliverList.list(
              children: [
                const SizedBox(height: bigValue,),
                Row(
                  children: [
                    const SizedBox(width: smallValue,),
                    Expanded(
                      child: Text(
                        T.book.similar,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(width: smallValue,),
                  ],
                ),
                const SizedBox(height: defaultValue,),
              ],
            ),

            SliverList.separated(
              itemCount: books.length,
              itemBuilder: (context, index) => MultiRepositoryProvider(
                providers: [
                  RepositoryProvider.value(
                    value: books[index],
                  ),
                ],
                child: const BookListItemWidget(),
              ),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ],
        ),
      ),
  );
  }
}
