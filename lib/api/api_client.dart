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
}
