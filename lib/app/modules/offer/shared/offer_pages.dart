part of '../offer_module.dart';

class _OfferPages {
  _OfferPages._();

  static List<GetPage> offerPages = [
    // GetPage(
    //     name: OfferRoutes.allCategoryRoute,
    //     page: () => const CategoryView(),
    //     binding: CategoryBinding()),

    // GetPage(
    //     name: OfferRoutes.addCategoryRoute,
    //     page: () => const AddCategoryView(),
    //     binding: AddCategoryBinding()),

    // GetPage(
    //     name: OfferRoutes.allShopRoute,
    //     page: () => const ShopsView(),
    //     binding: ShopsBinding()),

    // GetPage(
    //     name: OfferRoutes.addShopRoute,
    //     page: () => const AddShopView(),
    //     binding: AddShopBinding()),

    GetPage(
        name: OfferRoutes.allProductRoute,
        page: () => const ProductsView(),
        binding: ProductsBinding()),

    GetPage(
        name: OfferRoutes.addProductRoute,
        page: () => const AddProductView(),
        binding: AddProductBinding()),

    // GetPage(name: OfferRoutes.homeRoute,
    //  page: ()=> const HomeView(),
    //  binding: HomeBinding())
  ];
}
