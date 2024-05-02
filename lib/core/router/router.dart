import 'package:auto_route/auto_route.dart';
import 'package:digital_bookshelf_client/ui/screen/auth/auth_screen.dart';
import 'package:flutter/material.dart';

import 'empty_router_page.dart';


part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    // AutoRoute(page: SignUpRoute.page, path: "/signUp"),
    // AutoRoute(
    //   page: SignInRoute.page,
    //   path: "/",
    //   initial: true
    // ),

    // AutoRoute(
    //   page: HomeShopRoute.page,
    //   path: "/home",
    //   children: [
    //     AutoRoute(page: EmptyRouterCatalog.page, path: "catalog", initial: true, children: [
    //       AutoRoute(page: CatalogRoute.page, path: ""),
    //       AutoRoute(page: ItemRoute.page, path: "item"),
    //       AutoRoute(page: FilterRoute.page, path: "filter"),
    //     ]),
    //     AutoRoute(page: EmptyRouterCategory.page, path: "category", children: [
    //       AutoRoute(page: CategoryRoute.page, path: ""),
    //       AutoRoute(page: CatalogRoute.page, path: ""),
    //       AutoRoute(page: ItemRoute.page, path: "item"),
    //     ]),
    //     AutoRoute(page: EmptyRouterCart.page, path: "cart", children: [
    //       AutoRoute(page: CartRoute.page, path: ""),
    //       AutoRoute(page: ItemRoute.page, path: "item"),
    //       AutoRoute(page: MakingPurchaseRoute.page, path: "makePurchase"),
    //     ]),
    //     AutoRoute(page: EmptyRouterUser.page, path: "userMenu", children: [
    //       AutoRoute(page: UserMenuRoute.page, path: ""),
    //       AutoRoute(page: ItemRoute.page, path: "item"),
    //       AutoRoute(page: AddItemRoute.page, path: "new_item"),
    //       AutoRoute(page: PersonalDataRoute.page, path: "personal"),
    //       AutoRoute(page: MyGoodsRoute.page, path: "myGoods"),
    //       AutoRoute(page: MyRequestRoute.page, path: "myRequests"),
    //       AutoRoute(page: AddRequestRoute.page, path: "addRequests"),
    //       AutoRoute(page: MyReviewRoute.page, path: "addRequests"),
    //       AutoRoute(page: MyPriceOffersRoute.page, path: "myPriceOffers"),
    //     ]),
    //   ]
    // ),
  ];
}