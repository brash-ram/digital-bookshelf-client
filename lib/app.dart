import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'api/api_client.dart';
import 'api/api_repository.dart';
import 'api/auth_controller.dart';
import 'api/client.dart';
import 'api/repository.dart';
import 'core/http/client_io.dart'
if (dart.library.io) 'core/http/client_io.dart'
if (dart.library.js) 'core/http/client_web.dart';
import 'core/router/router.dart';
import 'logging.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthController(),
        ),
        RepositoryProvider(
          create: (context) => createClient(),
        ),
        RepositoryProvider(
          create: (context) => Repository(),
        ),
        RepositoryProvider(
          create: (context) => Client(
            baseUri: Uri.https('127.0.0.1:8080'),
            // baseUri: Uri.http('127.0.0.1:8080', 'api/v1'),
            client: context.read(),
            authController: context.read(),
          ),
        ),
        RepositoryProvider(
          create: (context) => ApiClient(context.read()),
        ),
        RepositoryProvider(
          create: (context) => ApiRepository(context.read(), context.read()),
        ),
      ],
      child: Builder(
        builder: (context) {
          final appRouter = AppRouter();
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Digital bookshelf',
            theme: FlexThemeData.light(
              scheme: FlexScheme.purpleM3,
              useMaterial3: true,
            ),
            darkTheme: FlexThemeData.dark(
              scheme: FlexScheme.purpleM3,
              useMaterial3: true,
            ),
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            // locale: TranslationProvider.of(context).flutterLocale,
            routerConfig: appRouter.config(
              navigatorObservers: () => [
                TalkerRouteObserver(talker),
              ],
            ),
          );
        },
      ),
    );
}
