import 'package:digital_bookshelf_client/bloc/base/model_bloc.dart';
import 'package:digital_bookshelf_client/styles.dart';

class TagBloc extends ModelBloc<List<String>> {
  TagBloc({required this.repository});

  final ApiBlocRepository repository;

  @override
  Stream<List<String>> get dataStream => repository.getTags();

  @override
  Future<void> fetchNewData() async => repository.fetchTags();
}
