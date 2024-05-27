import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class LibraryBloc extends ModelBloc<List<BookListItem>> {
  LibraryBloc({required this.repository, this.userId,});

  final ApiBlocRepository repository;

  final int? userId;

  @override
  Stream<List<BookListItem>> get dataStream => repository.getLibrary(userId ?? -2);

  @override
  Future<void> fetchNewData() async => repository.fetchLibrary(userId ?? -2);
}
