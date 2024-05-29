import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class LastBookBloc extends ModelBloc<List<BookListItem>> {
  LastBookBloc({required this.repository});

  final ApiBlocRepository repository;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getLastBooks();

  @override
  Future<void> fetchNewData() async => repository.fetchLastBooks();
}
