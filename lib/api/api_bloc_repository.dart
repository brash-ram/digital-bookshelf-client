import 'package:digital_bookshelf_client/api/api_client.dart';
import 'package:digital_bookshelf_client/api/repository.dart';
import 'package:digital_bookshelf_client/data/data.dart';

class ApiBlocRepository {

  ApiBlocRepository(this.repository, this.client);

  final Repository repository;
  final ApiClient client;

  Future<void> fetchMyProfile() =>
      repository.wrapFetchCall(
        (id) async => client.getMyProfileInfo(),
        -1,
      );

  Stream<UserInfo> getMyProfile() =>
      repository.createDataStream(
        (id) async => fetchMyProfile(),
        -1,
      );

  Future<void> fetchGenres() =>
      repository.wrapFetchCall(
        (id) async => client.getGenres(),
        -1,
      );

  Stream<List<String>> getGenres() =>
      repository.createDataStream(
        (id) async => fetchGenres(),
        -1,
      );

  Future<void> fetchBookSeries(int authorId) =>
      repository.wrapFetchCall(
        (id) async => id == -1 ? client.myBookSeries() : client.getBookSeriesByAuthor(id),
        authorId,
      );

  Stream<List<BookSeries>> getBookSeries(int authorId) =>
      repository.createDataStream(
        (id) async => fetchBookSeries(id),
        authorId,
      );

}
