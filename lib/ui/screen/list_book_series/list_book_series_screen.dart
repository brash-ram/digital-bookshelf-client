import 'package:auto_route/annotations.dart';
import 'package:digital_bookshelf_client/bloc/book_series_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/list_book_series/widget/list_book_series.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ListBookSeriesScreen extends StatelessWidget {
  const ListBookSeriesScreen({super.key, this.authorId});

  final int? authorId;

  @override
  Widget build(BuildContext context) =>
      BlocProvider.value(
        value: BookSeriesBloc(repository: context.read(), authorId: authorId),
        child: UnFocusKeyboardOutside(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                Translations.of(context).bookSeries.listTitle,
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () async => context.read<BookSeriesBloc>().update(),
              child: const SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(smallestValue),
                  child: ListBookSeries(),
                ),
              ),
            ),
          ),
        ),
      );
}
