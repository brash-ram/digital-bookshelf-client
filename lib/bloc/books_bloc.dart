import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class BookSeriesBloc extends ModelBloc<List<BookSeries>> {
  BookSeriesBloc({required this.repository, this.authorId,});

  final ApiBlocRepository repository;

  final int? authorId;

  @override
  Stream<List<BookSeries>> get dataStream => repository.getBooks(authorId ?? -1);

  @override
  Future<void> fetchNewData() async => repository.fetchBooks(authorId ?? -1);
}
