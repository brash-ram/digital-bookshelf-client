import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/book_price_wdget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PurchasedBookWidget extends StatelessWidget {
  const PurchasedBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final book = context.read<PurchasedBook>();
    return InkWell(
      onTap: () async => AutoRouter.of(context).navigate(BookRoute(id: book.book.id)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.book.name,
            style: Theme.of(context).textTheme.titleMedium,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: smallValue,),
          BookPriceWidget(
            price: book.price,
            priceType: PriceType.selling,
          ),
          const SizedBox(height: smallValue,),
          Text(
            book.createdAt.formatDateTime(),
          ),
        ],
      ),
    );
  }
}
