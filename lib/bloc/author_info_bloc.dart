import 'package:digital_bookshelf_client/api/api.dart';
import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';

class AuthorInfoBloc extends ModelBloc<AuthorInfo> {
  AuthorInfoBloc({required this.repository, required this.id});

  final ApiBlocRepository repository;
  final int id;

  @override
  Stream<AuthorInfo> get dataStream => repository.getAuthorInfo(id);

  @override
  Future<void> fetchNewData() async => repository.fetchAuthorInfo(id);

}
