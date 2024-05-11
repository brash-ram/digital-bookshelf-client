import 'package:digital_bookshelf_client/i18n/strings.g.dart';
import 'package:intl/intl.dart';

extension FormattedToString on DateTime {
  String formatDate() {
    final formatter = DateFormat('yyyy-dd-MM');
    return formatter.format(this);
  }

  String formatDateTime() {
    final formatter = DateFormat('yyyy-dd-MM HH:mm');
    return formatter.format(this);
  }
}

extension EnumGetter on Translations {
  String getEnum<T extends Enum>(String enumName, T value) => this['enums.$enumName.${value.name}'] as String;
}

