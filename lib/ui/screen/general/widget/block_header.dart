import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class BlockHeader extends StatelessWidget {
  const BlockHeader({required this.title, required this.onPressed, super.key});

  final String title;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final T = Translations.of(context);
    return SliverList.list(
      children: [
        const SizedBox(height: bigValue,),
        Row(
          children: [
            const SizedBox(width: smallValue,),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            InkWell(
              onTap: onPressed,
              child: Row(
                children: [
                  Text(
                    T.general.view,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(width: smallValue,),
          ],
        ),
        const SizedBox(height: defaultValue,),
      ],
    );
  }
}
