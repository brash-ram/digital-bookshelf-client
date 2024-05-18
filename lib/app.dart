import 'package:digital_bookshelf_client/api/api.dart';
import 'package:digital_bookshelf_client/api/api_client.dart';
import 'package:digital_bookshelf_client/api/api_repository.dart';
import 'package:digital_bookshelf_client/api/auth_controller.dart';
import 'package:digital_bookshelf_client/api/client.dart';
import 'package:digital_bookshelf_client/api/repository.dart';
import 'package:digital_bookshelf_client/core/http/client_io.dart'
if (dart.library.io) 'core/http/client_io.dart'
if (dart.library.js) 'core/http/client_web.dart';
import 'package:digital_bookshelf_client/core/router/router.dart';
import 'package:digital_bookshelf_client/core/storages/secure_storage.dart';
import 'package:digital_bookshelf_client/core/storages/token_storage.dart';
import 'package:digital_bookshelf_client/init_auth.dart';
import 'package:digital_bookshelf_client/logging.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker_flutter/talker_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: AuthController(),
        ),
        RepositoryProvider(
          create: (context) => createClient(),
        ),
        RepositoryProvider(
          create: (context) => Repository(),
        ),
        RepositoryProvider(
          create: (context) => Client(
            baseUri: Uri.http('10.0.2.2:8080'),
            // baseUri: Uri.http('127.0.0.1:8080', 'api/v1'),
            client: context.read(),
            authController: context.read(),
          ),
        ),
        RepositoryProvider(
          create: (context) => SecureStorage(flutterSecureStorage: const FlutterSecureStorage()),
        ),
        RepositoryProvider(
          create: (context) => TokenStorage(secureStorage: context.read()),
        ),
        RepositoryProvider(
          create: (context) => ApiClient(context.read()),
        ),
        RepositoryProvider(
          create: (context) => ApiRepository(context.read(), context.read(), context.read()),
        ),
        RepositoryProvider(
          create: (context) => ApiBlocRepository(context.read(), context.read()),
        ),
      ],
      child: Builder(
        builder: (context) => InitAuth(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Digital bookshelf',
            theme: FlexThemeData.light(
              scheme: FlexScheme.purpleM3,
              useMaterial3: true,
            ),
            // darkTheme: FlexThemeData.dark(
            //   scheme: FlexScheme.purpleM3,
            //   useMaterial3: true,
            // ),
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            // locale: TranslationProvider.of(context).flutterLocale,
            routerConfig: AppRouter().config(
              navigatorObservers: () =>
              [
                TalkerRouteObserver(talker),
              ],
            ),
          ),
        ),
      ),
    );
}
