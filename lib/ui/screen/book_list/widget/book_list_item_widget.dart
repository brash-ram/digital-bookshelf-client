import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/book_list/widget/book_item_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListItemWidget extends StatelessWidget {
  const BookListItemWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const BookItemHeader(),
      const SizedBox(height: smallestValue,),
      Text(
        context.read<BookListItem>().description,
        style: Theme.of(context).textTheme.bodySmall,
        maxLines: 3,
      ),
    ],
  );
}
