import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class PurchasedBooksBloc extends ModelBloc<List<PurchasedBook>> {
  PurchasedBooksBloc({required this.repository});

  final ApiBlocRepository repository;

  @override
  Stream<List<PurchasedBook>> get dataStream => repository.getPurchasedBooks();

  @override
  Future<void> fetchNewData() async => repository.fetchPurchasedBooks();
}
