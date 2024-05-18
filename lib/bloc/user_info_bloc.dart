import 'package:digital_bookshelf_client/api/api.dart';
import 'package:digital_bookshelf_client/bloc/base/bloc_state.dart';
import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';

class UserInfoBloc extends ModelBloc<UserInfo> {
  UserInfoBloc({required this.repository, this.id});

  final ApiBlocRepository repository;
  final int? id;

  @override
  Stream<UserInfo> get dataStream => repository.getMyProfile();

  @override
  Future<void> fetchNewData() async => repository.fetchMyProfile();

  bool hasRole(Role role) {
    if (state is BlocStateData) {
      return state.value!.roles.contains(role);
    } else {
      return false;
    }
  }

  bool hasAnyRole(List<Role> roles) {
    if (state is BlocStateData) {
      for (final role in roles) {
        if (state.value!.roles.contains(role))
          return true;
      }
    }
    return false;
  }
}
