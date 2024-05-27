import 'package:digital_bookshelf_client/api/api_client.dart';
import 'package:digital_bookshelf_client/api/repository.dart';
import 'package:digital_bookshelf_client/bloc/purchased_book_bloc.dart';
import 'package:digital_bookshelf_client/data/book/purchased_book.dart';
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

}
