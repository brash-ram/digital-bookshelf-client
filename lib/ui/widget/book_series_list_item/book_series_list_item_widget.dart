import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class BookSeriesListItemWidget extends StatelessWidget {
  const BookSeriesListItemWidget({required this.series, super.key});
  final BookSeries series;

  @override
  Widget build(BuildContext context) => ListTile(
    title: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          series.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: smallValue,),
        Text(
          '${Translations.of(context).bookSeries.numberBooks} ${series.bookIds.length}',
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 3,
        ),
        const SizedBox(height: smallestValue,),
        Text(
          series.description,
          style: Theme.of(context).textTheme.bodySmall,
          maxLines: 3,
        ),
      ],
    ),
  );
}
