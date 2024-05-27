import 'package:digital_bookshelf_client/bloc/book_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:easy_loading_button/easy_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookButtons extends StatefulWidget {
  const BookButtons({super.key});

  @override
  State<BookButtons> createState() => _BookButtonsState();
}

class _BookButtonsState extends State<BookButtons> {
  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<BookBloc, Book, Book>(
    selector: (e) => e,
    builder: (context, data) {
      final T = Translations.of(context);
      late Widget widget;
      if (data.isInLibrary) {
        widget = LoadingButton(
          type: EasyButtonType.outlined,
          child: Text(
            T.book.isInLibrary,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        );
      } else if (data.priceType == PriceType.selling) {
        widget = LoadingButton(
          onPressed: () async {
            final result = await context.read<ApiRepository>().buyBook(data.id);
            if (context.mounted) {
              if (result) {
                await context.read<BookBloc>().update();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(Translations.of(context).utils.fail),
                  ),
                );
              }
            }
          },
          child: Text(
            T.book.buy,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        );
      } else {
        widget = LoadingButton(
          onPressed: () async {
            final result = await context.read<ApiRepository>().addToLibrary(data.id);
            if (context.mounted) {
              if (result) {
                await context.read<BookBloc>().update();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(Translations.of(context).utils.fail),
                  ),
                );
              }
            }
          },
          child: Text(
            T.book.addToLibrary,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        );
      }
      return Column(
        children: [
          widget,
          if (data.isInLibrary)
            const SizedBox(height: smallValue,),
          if (data.isInLibrary)
            LoadingButton(
              onPressed: () {},
              child: Text(
                T.book.download,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
        ],
      );
    },
  );
}
