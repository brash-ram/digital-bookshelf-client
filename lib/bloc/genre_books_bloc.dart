import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class GenreBooksBloc extends ModelBloc<List<BookListItem>> {
  GenreBooksBloc({required this.repository, required this.genre});

  final ApiBlocRepository repository;

  final String genre;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getBooksFromGenre(genre);

  @override
  Future<void> fetchNewData() async => repository.fetchBooksFromGenre(genre);
}
