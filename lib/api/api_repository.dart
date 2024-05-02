
import 'package:digital_bookshelf_client/api/repository.dart';

import 'api_client.dart';

class ApiRepository {

  ApiRepository(this.repository, this.client);

  final Repository repository;
  final ApiClient client;

  // Future<void> fetchCatalog(int categoryId) =>
  //   repository.wrapFetchCall(
  //     (id) async => client.getCatalog(id),
  //     categoryId,
  //   );
  //
  // Stream<Catalog> getCatalog(int categoryId) =>
  //   repository.createDataStream(
  //     (id) async => fetchCatalog(id),
  //     categoryId,
  //   );
  //
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
  // Future<bool> signIn(SignInRequest request) async {
  //   late TokenResponse response;
  //   try {
  //     response = await client.signIn(request);
  //   } catch (e) {
  //     return Future.value(false);
  //   }
  //
  //   await DI.resolve<TokenStorage>().storeAccessToken(response.token);
  //   client.client.authController.token = response.token;
  //   DI.resolve<Dio>().options.headers["Authorization"] = "Bearer ${response.token}";
  //   return Future.value(true);
  // }
}