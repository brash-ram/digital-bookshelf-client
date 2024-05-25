import 'package:digital_bookshelf_client/bloc/author_info_bloc.dart';
import 'package:digital_bookshelf_client/bloc/book_series_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/book_series_list_item/book_series_list_item_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookSeriesTabPage extends StatelessWidget {
  const BookSeriesTabPage({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<AuthorInfoBloc, AuthorInfo, AuthorInfo>(
    selector: (e) => e,
    builder: (context, data) => BlocProvider(
      create: (context) => BookSeriesBloc(repository: context.read(), authorId: data.id),
      child: ModelBlocDataSelector<BookSeriesBloc, List<BookSeries>, List<BookSeries>>(
        selector: (e) => e,
        builder: (context, series) => CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => BookSeriesListItemWidget(series: series[index]),
                childCount: series.length,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
