import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';

class ConfirmDialogWidget extends StatelessWidget {
  const ConfirmDialogWidget({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Center(
      child: Text(
        Translations.of(context).alert.confirm.title,
      )
    ),
    content: Text(
      message,
    ),
    actions: [
      ElevatedButton(
        onPressed: () => Navigator.pop(context, false),
        child: Text(
          Translations.of(context).utils.cancel,
        ),
      ),
      ElevatedButton(
        onPressed: () => Navigator.pop(context, true),
        child: Text(
          Translations.of(context).utils.ok,
        ),
      ),
    ],
  );
}
