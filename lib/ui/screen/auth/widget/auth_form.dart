import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) => Form(
      key: _formKey,
      autovalidateMode: _autoValidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFieldWidget(
            labelText: Translations.of(context).user.email,
            validator: ValidationBuilder().email().build(),
            onChanged: (text) => email = text,
          ),
          const SizedBox(
            height: bigValue,
          ),
          TextFieldWidget(
            labelText: Translations.of(context).user.password,
            obscureText: true,
            validator: ValidationBuilder().required().build(),
            onChanged: (text) => password = text,
          ),
          const SizedBox(
            height: bigValue,
          ),
          LoadingButton(
            height: 40,
            onPressed: () async {
              setState(() {
                _autoValidateMode = AutovalidateMode.always;
              });
              if (_formKey.currentState?.validate() ?? false) {
                final result = await context.read<ApiRepository>().signIn(
                  email,
                  password,
                );
                if (context.mounted) {
                  if (result) {
                    await AutoRouter.of(context).replace(const HomeRoute());
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(Translations.of(context).utils.failAuth),
                      ),
                    );
                  }
                }
              }
            },
            child: Text(
              Translations.of(context).auth.button.logIn,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          const SizedBox(height: defaultValue,),
          LoadingButton(
            height: 40,
            onPressed: () async {
              setState(() {
                _autoValidateMode = AutovalidateMode.always;
              });
              if (_formKey.currentState?.validate() ?? false) {
                final result = await context.read<ApiRepository>().signUp(
                  email,
                  password,
                );
                if (context.mounted) {
                  if (result) {
                    await AutoRouter.of(context).replace(const HomeRoute());
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(Translations.of(context).utils.failAuth),
                        ),
                    );
                  }
                }
              }
            },
            child: Text(
              Translations.of(context).auth.button.logUp,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
}
