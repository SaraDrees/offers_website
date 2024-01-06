part of '../offer_module.dart';

class _OfferPages {
  _OfferPages._();

  static List<GetPage> offerPages = [
    GetPage(
        name: OfferRoutes.allProductRoute,
        page: () => const ProductsView(),
        binding: ProductsBinding()),

    GetPage(
        name: OfferRoutes.addProductRoute,
        page: () => const AddProductView(),
        binding: AddProductBinding()),
  ];
}
