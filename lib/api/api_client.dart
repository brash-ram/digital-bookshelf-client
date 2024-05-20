import 'package:digital_bookshelf_client/api/app_request_path.dart';
import 'package:digital_bookshelf_client/api/client.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/data/user/personal_data_refs.dart';

class ApiClient {

  ApiClient(this.client);

  final Client client;

  Future<UserInfo> getMyProfileInfo() async =>
      client.get(myProfilePath);

  Future<JwtTokens> signIn(String username, String password) async => client.post(
      signInPath,
      body: {
        'username' : username,
        'password' : password,
      },
    );

  Future<JwtTokens> signUp(String username, String password) async => client.post(
      signUpPath,
      body: {
        'username' : username,
        'password' : password,
      },
    );

  Future<JwtTokens> refreshTokens(String refreshToken) async => client.post(
      refreshTokensPath,
      body: {
        'refreshToken' : refreshToken,
      },
    );

  Future<void> changeUserData(PersonalData data) async => client.post(
      changeUserInfoPath,
      body: data.toMap(),
    );

  Future<void> changeUserRefs(PersonalDataRefs data) async => client.post(
      changeUserRefsPath,
      body: data.toMap(),
    );

  Future<void> becomeAuthor() async => client.get(
      becomeAuthorPath,
    );

  Future<List<String>> getGenres() async => client.get(
      getGenresPath,
    );

  Future<void> addGenre(String name) async => client.post(
      addGenrePath,
      queryParameters: {'name' : name},
    );

  Future<void> deleteGenre(String name) async => client.post(
      deleteGenrePath,
      queryParameters: {'name' : name},
    );

  Future<List<BookSeries>> myBookSeries() async => client.get(mySeriesPath,);

  Future<List<BookSeries>> getBookSeriesByAuthor(int authorId) async => client.get('$getSeriesPath/$authorId',);

  Future<BookSeries> getBookSeries(int id) async => client.get('$bookSeriesPath/$id',);

  Future<void> deleteBookSeries(int id) async =>
      client.post(
        deleteSeriesPath,
        queryParameters: {
          'id' : id.toString(),
        },
      );

  Future<void> addBookSeries(String name, String description) async =>
      client.post(
        addSeriesPath,
        queryParameters: {
          'name' : name,
          'description' : description,
        },
      );

  Future<void> updateBookSeries(SimpleBookSeries series) async =>
      client.post(
        updateSeriesPath,
        queryParameters: {
          'id' : series.id.toString(),
          'name' : series.name,
          'description' : series.description,
        },
      );

  Future<List<Book>> myBooks() async => client.get(getMyBooksPath,);

  Future<List<Book>> getBooksByAuthor(int authorId) async => client.get('$getAuthorBooksPath/$authorId',);

  Future<Book> getBook(int id) async => client.get('$getBookPath/$id',);

  Future<int> addBook(NewBook book) async =>
      client.post(
        addBookPath,
        body: book.toMap(),
      );

  Future<List<String>> getAllTags() async => client.get(getTagsPath,);

  Future<void> uploadBookFile(FileModel file, int bookId) async => client.postBinary(
    uploadBookFilePath,
    bodyBytes: file.content,
      queryParameters: {
        'extension' : file.extension,
        'id' : bookId.toString(),
      },
  );

  Future<int> uploadImageFile(FileModel file) async => client.postBinary(
    uploadImageFilePath,
    bodyBytes: file.content,
    queryParameters: {
      'extension' : file.extension,
    },
  );
}
