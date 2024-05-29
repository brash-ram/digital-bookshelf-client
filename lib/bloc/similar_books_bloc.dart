import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class SimilarBooksBloc extends ModelBloc<List<BookListItem>> {
  SimilarBooksBloc({required this.repository, required this.id});

  final ApiBlocRepository repository;

  final int id;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getSimilarBooks(id);

  @override
  Future<void> fetchNewData() async => repository.fetchSimilarBooks(id);
}
