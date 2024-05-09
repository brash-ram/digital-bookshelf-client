import 'package:digital_bookshelf_client/api/api.dart';
import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';

class UserInfoBloc extends ModelBloc<UserInfo> {
  UserInfoBloc({required this.repository, this.id});

  final ApiRepository repository;
  final int? id;

  @override
  Stream<UserInfo> get dataStream => repository.getMyProfile();

  @override
  Future<void> fetchNewData() async => repository.fetchMyProfile();
}
