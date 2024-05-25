import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/book_list_item/book_item_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListItemWidget extends StatelessWidget {
  const BookListItemWidget({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () async => AutoRouter.of(context).navigate(BookRoute(id: context.read<BookListItem>().id)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BookItemBody(),
        const SizedBox(height: smallestValue,),
        Text(
          context.read<BookListItem>().description,
          style: Theme.of(context).textTheme.bodySmall,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
