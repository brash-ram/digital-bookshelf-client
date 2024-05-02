// import 'package:short_chain_mobile_client/api/api_client.dart';
// import 'package:short_chain_mobile_client/api/api_repository.dart';
// import 'package:short_chain_mobile_client/bloc/base/bloc_event.dart';
// import 'package:short_chain_mobile_client/bloc/base/model_bloc.dart';
// import 'package:short_chain_mobile_client/core/extensions/extensions.dart';
// import 'package:short_chain_mobile_client/data/all.dart';
//
// class CartBloc extends ModelBloc<List<ItemCartModel>> {
//   CartBloc(this._api, this._client);
//
//   final ApiRepository _api;
//   final ApiClient _client;
//
//   @override
//   Stream<List<ItemCartModel>> get dataStream => _api.getCart();
//
//   @override
//   Future<void> fetchNewData() async => _api.fetchCart();
//
//   void selectAllCartItems(bool value) {
//     for (ItemCartModel item in state.value!) {
//       item.selected = value;
//     }
//     offlineUpdate();
//   }
//
//   bool hasAnySelectedItems() {
//     return state.value!.any((element) => element.selected);
//   }
//
//   List<ItemCartModel> getSelectedItems() {
//     return state.value!.where((element) => element.selected).toList();
//   }
//
//   void offlineUpdate() {
//     add(BlocDataEvent(state.value!.copy()));
//   }
//
//   Future<void> updateNumber(int cartItemId, int numberItems) async {
//     await _client.changeNumberCartItems(cartItemId, numberItems);
//     await update();
//   }
//
//   Future<void> deleteSelected() async {
//     for (final item in state.value!) {
//       if (item.selected) {
//         await _client.removeFromCart(item.id);
//       }
//     }
//     state.value!.removeWhere((element) => element.selected);
//     offlineUpdate();
//   }
//
//   Future<void> delete(int cartItemId) async {
//     await _client.removeFromCart(cartItemId);
//     state.value!.removeWhere((element) => element.id == cartItemId);
//     offlineUpdate();
//   }
//
//   int calculateItemsPrice() {
//     int price = 0;
//
//     for (ItemCartModel item in state.value!) {
//       if (item.selected) {
//         price += item.price * item.number;
//       }
//     }
//
//     return price;
//   }
// }
