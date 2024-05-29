import 'package:digital_bookshelf_client/api/api.dart';
import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';

class BookBloc extends ModelBloc<Book> {
  BookBloc({required this.repository, required this.id});

  final ApiBlocRepository repository;
  final int id;

  @override
  Stream<Book> get dataStream => repository.getBook(id);

  @override
  Future<void> fetchNewData() async => repository.fetchBook(id);

}
