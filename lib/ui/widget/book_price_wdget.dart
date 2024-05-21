import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class BookPriceWidget extends StatelessWidget {
  const BookPriceWidget({required this.price, required this.priceType, super.key});

  final int price;
  final PriceType priceType;

  @override
  Widget build(BuildContext context) {
    if (priceType == PriceType.free) {
      return const SizedBox();
    }

    return RichText(
      text: TextSpan(
        text: Translations.of(context).utils.price,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.green,
        ),
        children: [
          TextSpan(
            text: ' $price ${Translations.of(context).currency.RUB}',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
