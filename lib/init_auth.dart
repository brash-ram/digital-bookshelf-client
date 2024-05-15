import 'package:digital_bookshelf_client/api/api.dart';
import 'package:digital_bookshelf_client/core/storages/token_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitAuth extends StatelessWidget {
  const InitAuth({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => FutureBuilder(
    future: Future(() async => context.read<ApiRepository>().refreshTokens()),
    builder: (context, snapshot) {
      if (snapshot.connectionState != ConnectionState.done) {
        return const SizedBox();
      }

      final tokenRefreshed = snapshot.data;

      if (tokenRefreshed == null || !tokenRefreshed) {
        return child;
      }

      return FutureBuilder(
        future: Future(() async => context.read<TokenStorage>().getAccessToken()),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const SizedBox();
          }

          final token = snapshot.data;
          context.read<AuthController>().token = token;

          return child;
        },
      );
    },
  );
}
