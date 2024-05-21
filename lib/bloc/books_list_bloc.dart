import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class BookListBloc extends ModelBloc<List<BookListItem>> {
  BookListBloc({required this.repository, this.authorId,});

  final ApiBlocRepository repository;

  final int? authorId;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getBooks(authorId ?? -1);

  @override
  Future<void> fetchNewData() async => repository.fetchBooks(authorId ?? -1);
}
