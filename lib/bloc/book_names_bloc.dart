import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class BookNamesBloc extends ModelBloc<List<BookName>> {
  BookNamesBloc({required this.repository});

  final ApiBlocRepository repository;

  @override
  Stream<List<BookName>> get dataStream => repository.getBookNames();

  @override
  Future<void> fetchNewData() async => repository.fetchBookNames();
}
