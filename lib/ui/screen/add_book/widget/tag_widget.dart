import 'package:digital_bookshelf_client/bloc/tag_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/chip_horizontal_list.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:digital_bookshelf_client/ui/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagWidget extends StatefulWidget {
  const TagWidget({super.key});

  @override
  State<TagWidget> createState() => _TagWidgetState();
}

class _TagWidgetState extends State<TagWidget> {
  @override
  Widget build(BuildContext context) {
    final book = context.read<NewBook>();
    final T = Translations.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ModelBlocDataSelector<TagBloc, List<String>, List<String>>(
          selector: (e) => e,
          builder: (context, data) => Row(
            children: [
              Flexible(
                child: Text(
                  T.book.tags,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(width: smallValue,),
              SearchWidget(
                values: data.toSet().difference(book.tags.toSet()).toList(),
                onSelected: (value) {
                  book.tags.add(value);
                  setState(() {});
                },
                icon: const Icon(
                  Icons.add_circle_outline,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0,
          child: ChipHorizontalList(
            onDelete: (value) {
              book.tags.remove(value);
              setState(() {});
            },
            values: book.tags,
          ),
        ),
      ],
    );
  }
}
