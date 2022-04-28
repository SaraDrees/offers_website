import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_binding.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_view.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_binding.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_view.dart';
import 'package:offers_website/app/modules/home/dash_board/home_binding.dart';
import 'package:offers_website/app/modules/home/dash_board/home_view.dart';
import 'package:offers_website/app/modules/home/districts/districts_binding.dart';
import 'package:offers_website/app/modules/home/districts/districts_view.dart';
import 'package:offers_website/app/modules/home/offer/show_offers/show_offers_binding.dart';
import 'package:offers_website/app/modules/home/offer/show_offers/show_offers_view.dart';
import 'package:offers_website/app/modules/home/shared/home_routes.dart';
import 'package:offers_website/app/modules/home/shop/add_shop/add_shop_binding.dart';
import 'package:offers_website/app/modules/home/shop/add_shop/add_shop_view.dart';
import 'package:offers_website/app/modules/home/shop/show_shops/shop_binding.dart';
import 'package:offers_website/app/modules/home/shop/show_shops/shop_view.dart';
import 'package:offers_website/app/modules/offer/products/add_product/add_product_binding.dart';
import 'package:offers_website/app/modules/offer/products/add_product/add_product_view.dart';

part 'shared/home_pages.dart';

class HomeModule {
  static String get homeInitialRoute => HomeRoutes.homeRoute;
  static List<GetPage> get homePages => _HomePages.homePages;
}
