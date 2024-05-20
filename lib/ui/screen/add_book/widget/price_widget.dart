import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/form_widget/named_field.dart';
import 'package:digital_bookshelf_client/ui/widget/segmentation_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceWidget extends StatefulWidget {
  const PriceWidget({super.key});

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  @override
  Widget build(BuildContext context) {
    final T = Translations.of(context);
    final book = context.read<NewBook>();
    final isSelling = book.priceType == PriceType.selling;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: NamedField(
                name: T.book.priceType,
                child: SegmentationButtons<PriceType>(
                  initValue: book.priceType,
                  onChange: (values) {
                    book.priceType = values.first;
                    setState(() {

                    });
                  },
                  buttonValues: [
                    (PriceType.free, T.enums.priceType.free),
                    (PriceType.selling, T.enums.priceType.selling),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: isSelling ? defaultValue : 0.0,),
        if (isSelling) TextFieldWidget(
          initText: book.price.toString(),
          onChanged: (value) => book.price = double.tryParse(value)?.toInt() ?? 0,
          keyboardType: TextInputType.number,
          labelText: T.book.price,
        ) else const SizedBox(),
      ],
    );
  }
}
