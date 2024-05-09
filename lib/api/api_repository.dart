import 'package:digital_bookshelf_client/api/api_client.dart';
import 'package:digital_bookshelf_client/api/repository.dart';
import 'package:digital_bookshelf_client/core/storages/token_storage.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/data/user/jwt_tokens.dart';

class ApiRepository {

  ApiRepository(this.repository, this.client, this.tokenStorage);

  final Repository repository;
  final ApiClient client;
  final TokenStorage tokenStorage;

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

  // Future<void> fetchCategories(CategoriesTree tree) =>
  //   repository.wrapFetchCall(
  //     (id) async {
  //       final categories = await client.getCategory();
  //       tree.init(categories);
  //       return tree.currentCategories;
  //     },
  //     -1,
  //   );
  //
  // Stream<List<CategoryNode>> getCategories(CategoriesTree tree) =>
  //   repository.createDataStream(
  //     (id) async => fetchCategories(tree),
  //     -1,
  //   );
  //
  // Future<void> fetchItem(int id) =>
  //   repository.wrapFetchCall(
  //     (id) async {
  //       final itemResponse = await client.getItem(id);
  //       return itemResponse.result.toModel();
  //     },
  //     id,
  //   );
  //
  // Stream<ItemModel> getItem(int id) =>
  //   repository.createDataStream(
  //     (id) async => fetchItem(id),
  //     id,
  //   );
  //
  // Future<void> fetchCart() =>
  //   repository.wrapFetchCall(
  //     (id) async {
  //       return (await client.getCart()).toModel();
  //     },
  //     -1,
  //   );
  //
  // Stream<List<ItemCartModel>> getCart() =>
  //   repository.createDataStream(
  //     (id) async => fetchCart(),
  //     -1,
  //   );
  //
  // Future<void> fetchUser() =>
  //   repository.wrapFetchCall(
  //     (id) async => (await client.getUserInfo()).result,
  //     -1,
  //   );
  //
  // Stream<UserInfo> getUser() =>
  //   repository.createDataStream(
  //     (id) async => fetchUser(),
  //     -1,
  //   );
  //
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
}
