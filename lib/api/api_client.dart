import 'package:digital_bookshelf_client/api/client.dart';

class ApiClient {

  ApiClient(this.client);

  final Client client;

  // Future<Catalog> getCatalog(int categoryId) async =>
  //   client.post(getCatalogItems, body: {"categoryId": categoryId, 'page': 1});
  //
  // Future<ItemsResponse<Category>> getCategory() async =>
  //   client.get(getCategories);
  //
  // Future<void> addNewItem(NewItem newItem, PlatformFiles files) async {
  //   AddItemRequest request = AddItemRequest.fromModel(newItem, files.getFileCodes());
  //   return await client.post(addNewItemPath, body: request.toMap());
  // }
  //
  // Future<void> uploadImage(PlatformFiles files) async {
  //   for (final file in files.getNotUploadedFiles()) {
  //     String code = await client.postMultipart<String, Never>(uploadImagePath, file);
  //     files.files[file] = code;
  //   }
  // }
  //
  // Future<void> deleteImage(String code) async {
  //   return await client.request(uploadImagePath, method: "DELETE", body: code);
  // }
  //
  // Future<ResultResponse<ItemDetailsResponse>> getItem(int id) async {
  //   return await client.get("$getItemPath/$id");
  // }
  //
  // Future<CartItemResponse> getCart() async {
  //   return await client.get(getCartPath);
  // }
  //
  // Future<bool> addToCart(int id) async {
  //   try {
  //     await client.post(addItemCart, body: {"proposal_id" : id});
  //     return true;
  //   } catch (_) {
  //   }
  //   return false;
  // }
  //
  // Future<void> removeFromCart(int cartItemId) async {
  //   return await client.post(removeItemCart, body: {"cart_item_id" : cartItemId});
  // }
  //
  // Future<void> changeNumberCartItems(int cartItemId, int numberItems) async {
  //   return await client.post(changeNumberItemsCart, body: {"cart_item_id" : cartItemId, "qty" : numberItems});
  // }
  //
  // Future<ResultResponse<UserInfo>> getUserInfo() async {
  //   return await client.get(getUserInfoPath);
  // }
  //
  // Future<TokenResponse> signIn(SignInRequest request) async {
  //   return await client.post(signInPath, body: request.toMap());
  // }
}