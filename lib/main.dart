import 'package:flutter/material.dart';
import 'app.dart';
import 'i18n/strings.g.dart';

void main() async {
  // initializeMappers();
  WidgetsFlutterBinding.ensureInitialized();
  // LocaleSettings.setLocale(AppLocale.ru);
  LocaleSettings.useDeviceLocale();
  // await GlobalConfiguration().loadFromAsset("GlobalConfig");
  runApp(
      TranslationProvider(child: MyApp())
  );
}