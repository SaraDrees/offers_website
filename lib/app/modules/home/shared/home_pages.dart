part of '../home_module.dart';

class _HomePages {
  _HomePages._();

  static List<GetPage> homePages = [
    GetPage(
        name: HomeRoutes.homeRoute,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(
        name: HomeRoutes.homeScreenRoute,
        page: () => const HomeScreen(),
        binding: HomeBinding()),

    GetPage(
        name: HomeRoutes.allCategoryRoute,
        page: () => const CategoryView(),
        binding: CategoryBinding()),

    GetPage(
        name: HomeRoutes.addCategoryRoute,
        page: () => const AddCategoryView(),
        binding: AddCategoryBinding()),

    GetPage(
        name: HomeRoutes.allShopRoute,
        page: () => const ShopsView(),
        binding: ShopsBinding()),

    GetPage(
        name: HomeRoutes.addShopRoute,
        page: () => const AddShopView(),
        binding: AddShopBinding()),

    GetPage(
        name: HomeRoutes.showOffersRoute,
        page: () => const ShowOffersView(),
        binding: ShowOffersBinding()),

    GetPage(
        name: HomeRoutes.addProductRoute,
        page: () => const AddProductView(),
        binding: AddProductBinding()),

    GetPage(
        name: HomeRoutes.districtsRoute,
        page: () => const DistrictsView(),
        binding: DistrictsBinding())

    // GetPage(name: OfferRoutes.homeRoute,
    //  page: ()=> const HomeView(),
    //  binding: HomeBinding())
  ];
}
