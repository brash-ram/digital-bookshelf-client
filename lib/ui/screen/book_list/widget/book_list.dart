import 'package:digital_bookshelf_client/bloc/books_list_bloc.dart';
import 'package:digital_bookshelf_client/data/book/book_list_item.dart';
import 'package:digital_bookshelf_client/ui/screen/book_list/widget/book_list_item_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<BookListBloc, List<BookListItem>, List<BookListItem>>(
    selector: (e) => e,
    builder: (context, data) => ListView.separated(
      itemCount: data.length,
      itemBuilder: (context, index) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(
            value: data[index],
          ),
        ],
        child: const BookListItemWidget(),
      ),
      separatorBuilder: (context, index) => const Divider(),
    ),
  );
}