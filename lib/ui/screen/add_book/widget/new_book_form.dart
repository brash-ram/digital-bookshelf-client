import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/bloc/book_series_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/genre_widget.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/price_widget.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/tag_widget.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/upload_book_widget.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/upload_image_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/dropdown_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/form_widget/named_field.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewBookForm extends StatelessWidget {
  const NewBookForm({super.key});

  Future<void> uploadBook(BuildContext context) async {
    final book = context.read<NewBook>();
    final bookFiles = context.read<BookFiles>();
    final T = Translations.of(context);
    late int bookId;

    try {
      bookId = await context.read<ApiRepository>().addBook(book, bookFiles);
    } catch (ex) {
      if (context.mounted)
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(T.addBook.fail),
          ),
        );
    }

    if (context.mounted) {
      await AutoRouter.of(context).replace(BookRoute(id: bookId));
    }
  }

  @override
  Widget build(BuildContext context) {
    final book = context.read<NewBook>();
    final T = Translations.of(context);
    final bookFields = T.book;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 300,
            child: Row(
              children: [
                Expanded(
                  child: UploadImageFile(),
                ),
                SizedBox(width: smallValue,),
                Expanded(
                  child: UploadBookWidget(),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultValue,),
          TextFieldWidget(
            initText: book.name,
            labelText: bookFields.name,
            onChanged: (value) => book.name = value,
            maxLength: 255,
            maxLines: 2,
          ),
          const SizedBox(height: defaultValue,),
          TextFieldWidget(
            initText: book.description,
            labelText: bookFields.description,
            onChanged: (value) => book.description = value,
            maxLength: 3000,
            maxLines: 15,
          ),
          const SizedBox(height: defaultValue,),
          const PriceWidget(),
          const SizedBox(height: defaultValue,),
          ModelBlocDataSelector<BookSeriesBloc, List<BookSeries>, List<BookSeries>>(
            selector: (e) => e,
            builder: (context, data) => NamedField(
              name: T.book.bookSeries,
              child: DropdownWidget<int>(
                initText: book.seriesId == -1 ? '' : data.firstWhere((e) => e.id == book.seriesId).name,
                onPressed: (value) => book.seriesId = value,
                values: {
                  '' : -1,
                  for (final series in data)
                    series.name : series.id,
                },
              ),
            ),
          ),
          const SizedBox(height: defaultValue,),
          const GenreWidget(),
          const SizedBox(height: defaultValue,),
          const TagWidget(),
          const SizedBox(height: bigValue,),
          ElevatedButton(
            onPressed: () async => uploadBook(context),
            child: Text(
              T.utils.save,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
