import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class SearchBooksBloc extends ModelBloc<List<BookListItem>> {
  SearchBooksBloc({required this.repository, required this.name});

  final ApiBlocRepository repository;

  final String name;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getSearchBooks(name);

  @override
  Future<void> fetchNewData() async => repository.fetchSearchBooks(name);
}
