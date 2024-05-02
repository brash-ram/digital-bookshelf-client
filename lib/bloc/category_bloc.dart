// import 'dart:async';
//
// import 'package:short_chain_mobile_client/api/api_repository.dart';
// import 'package:short_chain_mobile_client/bloc/base/bloc_event.dart';
// import 'package:short_chain_mobile_client/bloc/base/model_bloc.dart';
// import 'package:short_chain_mobile_client/data/all.dart';
// import 'package:short_chain_mobile_client/data/model/category/categories_tree.dart';
//
// class CategoryBloc extends ModelBloc<List<CategoryNode>> {
//   CategoryBloc(this._tree, this._repository);
//
//   final CategoriesTree _tree;
//   final ApiRepository _repository;
//
//   @override
//   Stream<List<CategoryNode>> get dataStream => _repository.getCategories(_tree);
//
//   @override
//   Future<void> fetchNewData() async => _repository.fetchCategories(_tree);
//
//   List<CategoryNode> get path => _tree.path;
//
//   List<CategoryNode> get currentCategories => _tree.currentCategories;
//
//   bool get hasParent => _tree.currentCategories.isNotEmpty && _tree.currentCategories.first.parent != null;
//
//   String get pathString {
//     String result = "";
//     for (CategoryNode node in path) {
//       result += "${node.name} / ";
//     }
//     return result.substring(0, result.length - 3);
//   }
//
//   void loadChildren(int index) {
//     if (hasChildren(index)) {
//       _tree.loadChildren(index);
//       add(BlocDataEvent(_tree.currentCategories));
//     }
//   }
//
//   void loadParent() {
//     if (hasParent) {
//       _tree.loadParents();
//       add(BlocDataEvent(_tree.currentCategories));
//     }
//   }
//
//   bool hasChildren(int index) {
//     return _tree.currentCategories[index].children.isNotEmpty;
//   }
//
//   int getCategoryId(int index) {
//     return _tree.currentCategories[index].id;
//   }
// }
