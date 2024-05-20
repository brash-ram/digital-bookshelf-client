import 'package:digital_bookshelf_client/bloc/genre_list_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/add_book/widget/genre_select_widget.dart';
import 'package:digital_bookshelf_client/ui/widget/chip_horizontal_list.dart';
import 'package:digital_bookshelf_client/ui/widget/form_widget/named_field.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenreWidget extends StatefulWidget {
  const GenreWidget({super.key});

  @override
  State<GenreWidget> createState() => _GenreWidgetState();
}

class _GenreWidgetState extends State<GenreWidget> {
  @override
  Widget build(BuildContext context) {
    final book = context.read<NewBook>();
    final T = Translations.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ModelBlocDataSelector<GenreListBloc, List<String>, List<String>>(
          selector: (e) => e,
          builder: (context, data) => NamedField(
            name: T.book.genres,
            child: GenreSelectWidget(
              values: data,
              onChange: (values) {
                book.genres = values;
                setState(() {});
              },
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
          child: ChipHorizontalList(
            onDelete: (value) {
              book.genres.remove(value);
              setState(() {});
            },
            values: book.genres,
          ),
        ),
      ],
    );
  }
}
