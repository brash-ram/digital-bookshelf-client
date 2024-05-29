import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/data/book/book_list_item.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list_item/book_list_item_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookList<T extends ModelBloc<List<BookListItem>>> extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<T, List<BookListItem>, List<BookListItem>>(
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
