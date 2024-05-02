// import 'package:short_chain_mobile_client/data/all.dart';
//
// import '../api/api_repository.dart';
// import 'base/model_bloc.dart';
//
// class CatalogBloc extends ModelBloc<Catalog> {
//   CatalogBloc(this.api, this.categoryId) {
//     print("CatalogBloc created");
//   }
//
//   final ApiRepository api;
//   final int categoryId;
//
//   @override
//   Stream<Catalog> get dataStream => api.getCatalog(categoryId);
//
//   @override
//   Future<void> fetchNewData() async => api.fetchCatalog(categoryId);
// }
