import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class RecommendedBookBloc extends ModelBloc<List<BookListItem>> {
  RecommendedBookBloc({required this.repository});

  final ApiBlocRepository repository;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getRecommendedBooks();

  @override
  Future<void> fetchNewData() async => repository.fetchRecommendedBooks();
}
