import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/book_series_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookSeriesWidget extends StatelessWidget {
  const BookSeriesWidget({required this.series, super.key});

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
    trailing: context.read<BookSeriesBloc>().authorId == null ? Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () async {
            await AutoRouter.of(context).navigate(AddBookSeriesRoute(series: series));
          },
          icon: const Icon(Icons.create),
        ),
        IconButton(
          onPressed: () async {
            final result = await showConfirmDeleteDialog(context: context,);
            if (result != null && result && context.mounted) {
              await context.read<ApiRepository>().deleteBookSeries(series.id);
              if (context.mounted)
                await context.read<BookSeriesBloc>().update();
            }
          },
          icon: const Icon(Icons.delete),
        ),
      ],
    ) : null,
  );
}
