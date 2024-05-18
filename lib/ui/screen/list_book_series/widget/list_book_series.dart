import 'package:digital_bookshelf_client/bloc/book_series_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/list_book_series/widget/book_series_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';

class ListBookSeries extends StatelessWidget {
  const ListBookSeries({super.key});

  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<BookSeriesBloc, List<BookSeries>, List<BookSeries>>(
    selector: (e) => e,
    builder: (context, data) => ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) => BookSeriesWidget(series: data[index]),
        separatorBuilder:(context, index) => const Divider(),
    ),
  );
}
