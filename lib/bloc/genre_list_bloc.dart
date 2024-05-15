import 'package:digital_bookshelf_client/api/api.dart';
import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';

class GenreListBloc extends ModelBloc<List<String>> {
  GenreListBloc({required this.repository});

  final ApiRepository repository;

  @override
  Stream<List<String>> get dataStream => repository.getGenres();

  @override
  Future<void> fetchNewData() async => repository.fetchGenres();
}
