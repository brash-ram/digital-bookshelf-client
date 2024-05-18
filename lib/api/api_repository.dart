import 'package:digital_bookshelf_client/api/api_client.dart';
import 'package:digital_bookshelf_client/api/repository.dart';
import 'package:digital_bookshelf_client/core/storages/token_storage.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/data/user/personal_data_refs.dart';

class ApiRepository {

  ApiRepository(this.repository, this.client, this.tokenStorage);

  final Repository repository;
  final ApiClient client;
  final TokenStorage tokenStorage;

  Future<bool> signIn(String username, String password) async {
    late JwtTokens response;
    try {
      response = await client.signIn(username, password);
    } catch (e) {
      return Future.value(false);
    }

    await tokenStorage.storeAccessToken(response.accessToken);
    await tokenStorage.storeRefreshToken(response.refreshToken);

    client.client.authController.token = response.accessToken;

    return Future.value(true);
  }

  Future<bool> signUp(String username, String password) async {
    late JwtTokens response;
    try {
      response = await client.signUp(username, password);
    } catch (e) {
      return Future.value(false);
    }

    await tokenStorage.storeAccessToken(response.accessToken);
    await tokenStorage.storeRefreshToken(response.refreshToken);

    client.client.authController.token = response.accessToken;

    return Future.value(true);
  }

  Future<bool> refreshTokens() async {
    late JwtTokens response;
    final refreshToken = await tokenStorage.getRefreshToken();

    if (refreshToken == null) {
      return Future.value(false);
    }

    try {
      response = await client.refreshTokens(refreshToken);
    } catch (e) {
      return Future.value(false);
    }

    await tokenStorage.storeAccessToken(response.accessToken);
    await tokenStorage.storeRefreshToken(response.refreshToken);

    client.client.authController.token = response.accessToken;

    return Future.value(true);
  }

  Future<bool> changeUserInfo(PersonalData data) async =>
    repository.sendVoidRequest(() => client.changeUserData(data));

  Future<bool> changeUserRefs(PersonalDataRefs data) async =>
    repository.sendVoidRequest(() => client.changeUserRefs(data));

  Future<bool> becomeAuthor() async =>
    repository.sendVoidRequest(client.becomeAuthor);

  Future<bool> addGenre(String name) async =>
    repository.sendVoidRequest(() => client.addGenre(name));

  Future<bool> deleteGenre(String name) async =>
    repository.sendVoidRequest(() => client.deleteGenre(name));

  Future<bool> addBookSeries(String name, String description) async =>
    repository.sendVoidRequest(() => client.addBookSeries(name, description));

  Future<bool> updateBookSeries(SimpleBookSeries series) async =>
    repository.sendVoidRequest(() => client.updateBookSeries(series));

  Future<bool> deleteBookSeries(int id) async =>
    repository.sendVoidRequest(() => client.deleteBookSeries(id));
}
