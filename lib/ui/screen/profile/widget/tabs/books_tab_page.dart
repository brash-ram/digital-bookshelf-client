import 'package:digital_bookshelf_client/bloc/author_info_bloc.dart';
import 'package:digital_bookshelf_client/bloc/books_list_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list_item/book_list_item_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksTabPage extends StatelessWidget {
  const BooksTabPage({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<AuthorInfoBloc, AuthorInfo, AuthorInfo>(
    selector: (e) => e,
    builder: (context, data) => CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => RepositoryProvider.value(
              value: data.books[index],
              child: const Padding(
                padding: EdgeInsets.only(bottom: defaultValue),
                child: BookListItemWidget(),
              ),
            ),
            childCount: data.books.length,
          ),
        ),
      ],
    ),
  );
}
