import 'package:digital_bookshelf_client/api/api_client.dart';
import 'package:digital_bookshelf_client/api/repository.dart';
import 'package:digital_bookshelf_client/data/data.dart';

class ApiBlocRepository {

  ApiBlocRepository(this.repository, this.client);

  final Repository repository;
  final ApiClient client;

  Future<void> fetchUserProfile(int userId) =>
      repository.wrapFetchCall(
        (id) async => id == -1 ? client.getMyProfileInfo() : client.getUserInfo(id),
        userId,
      );

  Stream<UserInfo> getUserProfile(int userId) =>
      repository.createDataStream(
        (id) async => fetchUserProfile(id),
        userId,
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

  Future<void> fetchBooks(int authorId) =>
      repository.wrapFetchCall(
        (id) async => id == -1 ? client.myBooks() : client.getBooksByAuthor(id),
        authorId,
      );

  Stream<List<BookListItem>> getBooks(int authorId) =>
      repository.createDataStream(
        (id) async => fetchBooks(id),
        authorId,
      );

  Future<void> fetchTags() =>
      repository.wrapFetchCall(
        (id) async => client.getAllTags(),
        -2,
      );

  Stream<List<String>> getTags() =>
      repository.createDataStream(
        (id) async => fetchTags(),
        -2,
      );

  Future<void> fetchBook(int id) =>
      repository.wrapFetchCall(
        (id) async => client.getBook(id),
        id,
      );

  Stream<Book> getBook(int id) =>
      repository.createDataStream(
        (id) async => fetchBook(id),
        id,
      );

  Future<void> fetchAuthorInfo(int id) =>
      repository.wrapFetchCall(
        (id) async => client.getAuthorInfo(id),
        id,
      );

  Stream<AuthorInfo> getAuthorInfo(int id) =>
      repository.createDataStream(
        (id) async => fetchAuthorInfo(id),
        id,
      );

  Future<void> fetchLibrary(int authorId) =>
      repository.wrapFetchCall(
        (id) async => id < 0 ? client.getMyLibrary() : client.getUserLibrary(id),
        authorId,
      );

  Stream<List<BookListItem>> getLibrary(int authorId) =>
      repository.createDataStream(
        (id) async => fetchLibrary(id),
        authorId,
      );

  Future<void> fetchPurchasedBooks() =>
      repository.wrapFetchCall(
        (id) async => client.getPurchasedBooks(),
        -1,
      );

  Stream<List<PurchasedBook>> getPurchasedBooks() =>
      repository.createDataStream(
        (id) async => fetchPurchasedBooks(),
        -1,
      );

  Future<void> fetchBooksFromGenre(String genre) =>
      repository.wrapFetchCall(
        (id) async => client.getBooksByGenre(genre),
        -3,
      );

  Stream<List<BookListItem>> getBooksFromGenre(String genre) =>
      repository.createDataStream(
        (id) async => fetchBooksFromGenre(genre),
        -3,
      );

  Future<void> fetchBookNames() =>
      repository.wrapFetchCall(
        (id) async => client.getBookNames(),
        -1,
      );

  Stream<List<BookName>> getBookNames() =>
      repository.createDataStream(
        (id) async => fetchBookNames(),
        -1,
      );

  Future<void> fetchLastBooks() =>
      repository.wrapFetchCall(
        (id) async => client.getLastBooks(),
        -4,
      );

  Stream<List<BookListItem>> getLastBooks() =>
      repository.createDataStream(
        (id) async => fetchLastBooks(),
        -4,
      );

  Future<void> fetchHomeLastBooks() =>
      repository.wrapFetchCall(
        (id) async => client.getHomeLastBooks(),
        -5,
      );

  Stream<List<BookListItem>> getHomeLastBooks() =>
      repository.createDataStream(
        (id) async => fetchHomeLastBooks(),
        -5,
      );

  Future<void> fetchSearchBooks(String name) =>
      repository.wrapFetchCall(
        (id) async => client.search(name),
        -6,
      );

  Stream<List<BookListItem>> getSearchBooks(String name) =>
      repository.createDataStream(
        (id) async => fetchSearchBooks(name),
        -6,
      );

  Future<void> fetchRecommendedBooks() =>
      repository.wrapFetchCall(
        (id) async => client.getRecBooks(),
        -7,
      );

  Stream<List<BookListItem>> getRecommendedBooks() =>
      repository.createDataStream(
        (id) async => fetchRecommendedBooks(),
        -7,
      );


  Future<void> fetchHomeRecommendedBooks() =>
      repository.wrapFetchCall(
        (id) async => client.getHomeRecBooks(),
        -8,
      );

  Stream<List<BookListItem>> getHomeRecommendedBooks() =>
      repository.createDataStream(
        (id) async => fetchHomeRecommendedBooks(),
        -8,
      );


  Future<void> fetchSimilarBooks(int id) =>
      repository.wrapFetchCall(
        (id) async => client.getSimilarBooks(id),
        id,
      );

  Stream<List<BookListItem>> getSimilarBooks(int id) =>
      repository.createDataStream(
        (id) async => fetchSimilarBooks(id),
        id,
      );

}
