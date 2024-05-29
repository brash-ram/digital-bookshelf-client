import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class HomeRecommendedBookBloc extends ModelBloc<List<BookListItem>> {
  HomeRecommendedBookBloc({required this.repository});

  final ApiBlocRepository repository;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getHomeRecommendedBooks();

  @override
  Future<void> fetchNewData() async => repository.fetchHomeRecommendedBooks();
}
