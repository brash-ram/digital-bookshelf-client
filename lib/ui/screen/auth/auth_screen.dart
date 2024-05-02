import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/api/auth_controller.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/screen/auth/widget/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.read<AuthController>().hasAuth) {
      // unawaited(AutoRouter.of(context).replace(const HomeShopRoute()));
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Translations.of(context).auth.header.appBar.signIn,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: defaultValue),
              Text(
                Translations.of(context).auth.header.welcome,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
              Text(
                Translations.of(context).auth.header.info,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: defaultValue),
              const AuthForm(),
            ],
          ),
        ),
      ),
    );
  }
}