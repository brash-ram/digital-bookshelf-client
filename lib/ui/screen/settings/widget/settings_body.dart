import 'package:digital_bookshelf_client/core/theme_bloc/theme_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/dropdown_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = Translations.of(context).profile.settings;
    return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Text(
              settings.lang,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Flexible(
            child: DropdownWidget<String>(
              initText: settings.ru,
              values: {
                settings.ru : 'ru',
                settings.en : 'en',
              },
              onPressed: (value) {
                switch (value) {
                  case 'ru': LocaleSettings.setLocale(AppLocale.ru);
                  case 'en': LocaleSettings.setLocale(AppLocale.en);
                  case _: LocaleSettings.setLocale(AppLocale.ru);
                }
              },
            ),
          ),
        ],
      ),
      const SizedBox(height: defaultValue,),
      Row(
        children: [
          Expanded(
            child: Text(
              settings.theme,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Flexible(
            child: DropdownWidget<String>(
              initText: settings.light,
              values: {
                settings.light : 'light',
                settings.dark : 'dark',
              },
              onPressed: (value) {
                final bloc = context.read<ThemeBloc>();
                switch (value) {
                  case 'light': bloc.add(ThemeEventUpdate(ThemeMode.light));
                  case 'dark': bloc.add(ThemeEventUpdate(ThemeMode.dark));
                  case _: bloc.add(ThemeEventUpdate(ThemeMode.light));
                }
              },
            ),
          ),
        ],
      ),
    ],
  );
  }
}
