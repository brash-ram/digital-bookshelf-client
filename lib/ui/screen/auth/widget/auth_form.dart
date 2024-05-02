import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  AuthFormState createState() => AuthFormState();
}

class AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  String _email = '';
  String _password = '';

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
            onChanged: (text) => _email = text,
          ),
          const SizedBox(
            height: bigValue,
          ),
          TextFieldWidget(
            labelText: Translations.of(context).user.password,
            obscureText: true,
            validator: ValidationBuilder().required().build(),
            onChanged: (text) => _password = text,
          ),
          const SizedBox(
            height: bigValue,
          ),
          LoadingButton(
            onPressed: () async {
              // setState(() {
              //   _autoValidateMode = AutovalidateMode.always;
              // });
              // if (_formKey.currentState?.validate() ?? false) {
              //   bool result = await context.read<ApiRepository>().signIn(
              //     SignInRequest(
              //       username: _email,
              //       password: _password,
              //     )
              //   );
              //   if (context.mounted) {
              //     if (result) {
              //       await AutoRouter.of(context).replace(const HomeShopRoute());
              //     } else {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(
              //           content: Text(Translations.of(context).utils.failAuth),
              //         )
              //       );
              //     }
              //   }
              //   setState(() {
              //     isLoading = false;
              //   });
              // }
            },
            // padding: const EdgeInsets.all(defaultValue),
            child: Text(
              Translations.of(context).auth.button.logIn,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          )
        ],
      ),
    );
}
