import 'package:digital_bookshelf_client/app.dart';
import 'package:digital_bookshelf_client/data/data.init.dart';
import 'package:digital_bookshelf_client/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

void main() async {
  initializeMappers();
  WidgetsFlutterBinding.ensureInitialized();
  // LocaleSettings.setLocale(AppLocale.ru);
  LocaleSettings.useDeviceLocale();
  await GlobalConfiguration().loadFromAsset('GlobalConfig');
  runApp(
      TranslationProvider(child: const MyApp()),
  );
}
