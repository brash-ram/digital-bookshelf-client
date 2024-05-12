import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoleWidget extends StatelessWidget {
  const RoleWidget({
    required this.roles,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.exclude = false,
    super.key,
  });

  final List<Role> roles;
  final bool exclude;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    if (exclude ^ context.read<UserInfoBloc>().hasAnyRole(roles)) {
      return Padding(
        padding: padding,
        child: child,
      );
    }
    // if (exclude) {
    //   if (!test) {
    //     return Padding(
    //       padding: padding,
    //       child: child,
    //     );
    //   }
    // } else {
    //   if (test) {
    //
    //   }
    // }
    // if (context.read<UserInfoBloc>().hasAnyRole(roles)) {
    //   return Padding(
    //     padding: padding,
    //     child: child,
    //   );
    // }
    return const SizedBox();
  }
}
