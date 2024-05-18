import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddSeriesScreen extends StatelessWidget {
  const AddSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookSeries = context.read<SimpleBookSeries>();
    final T = Translations.of(context);
    return Column(
    children: [
      const SizedBox(height: bigValue,),
      TextFieldWidget(
        initText: bookSeries.name,
        onChanged: (value) => bookSeries.name = value,
        labelText: T.bookSeries.name,
        maxLines: 3,
        maxLength: 255,
      ),
      const SizedBox(height: defaultValue,),
      TextFieldWidget(
        initText: bookSeries.description,
        onChanged: (value) => bookSeries.description = value,
        labelText: T.bookSeries.description,
        maxLines: 15,
        maxLength: 3000,
      ),
      const SizedBox(height: bigValue,),
      LoadingButton(
        onPressed: () async {
          final result = await (bookSeries.id == -1 ? context.read<ApiRepository>().addBookSeries(
            bookSeries.name,
            bookSeries.description,
          ) : context.read<ApiRepository>().updateBookSeries(bookSeries));
          if (context.mounted) {
            if (result) {
              AutoRouter.of(context).back();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(T.utils.fail),
                ),
              );
            }
          }
        },
        child: Text(
          T.utils.save,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    ],
  );
  }
}
