import 'package:digital_bookshelf_client/bloc/library_bloc.dart';
import 'package:digital_bookshelf_client/data/book/book_list_item.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list_item/book_list_item_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyLibraryBody extends StatelessWidget {
  const MyLibraryBody({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<LibraryBloc, List<BookListItem>, List<BookListItem>>(
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
