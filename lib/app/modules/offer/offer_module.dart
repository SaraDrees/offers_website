import 'package:get/get.dart';
import 'package:offers_website/app/modules/offer/products/add_product/add_product_binding.dart';
import 'package:offers_website/app/modules/offer/products/add_product/add_product_view.dart';
import 'package:offers_website/app/modules/offer/products/show_products/products_binding.dart';
import 'package:offers_website/app/modules/offer/products/show_products/products_view.dart';
import 'package:offers_website/app/modules/offer/shared/constant/offer_routes.dart';

part 'shared/offer_pages.dart';

class OfferModule {
  static String get homeInitialRoute => OfferRoutes.homeRoute;
  static List<GetPage> get offerPages => _OfferPages.offerPages;
}
