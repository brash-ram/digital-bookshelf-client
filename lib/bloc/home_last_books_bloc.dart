import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class HomeLastBookBloc extends ModelBloc<List<BookListItem>> {
  HomeLastBookBloc({required this.repository});

  final ApiBlocRepository repository;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getHomeLastBooks();

  @override
  Future<void> fetchNewData() async => repository.fetchHomeLastBooks();
}
