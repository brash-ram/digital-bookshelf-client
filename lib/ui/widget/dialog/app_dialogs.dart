import 'package:digital_bookshelf_client/i18n/strings.g.dart';
import 'package:digital_bookshelf_client/ui/widget/dialog/confirm/confirm_dialog_widget.dart';
import 'package:flutter/material.dart';

Future<bool?> showConfirmDialog({
  required BuildContext context,
  required String message,
}) async => showDialog(
    context: context,
    builder: (context) => ConfirmDialogWidget(
      message: message,
    ),
  );

Future<bool?> showConfirmDeleteDialog({
  required BuildContext context,
}) async => showDialog(
    context: context,
    builder: (context) => ConfirmDialogWidget(
      message: Translations.of(context).alert.confirmDelete,
    ),
  );
