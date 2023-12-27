import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/home_category/home_category_binding.dart';
import 'package:offers_website/app/modules/home/dash_board/home_controller.dart';
import 'package:offers_website/app/modules/home/districts/districts_binding.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_binding.dart';
import 'package:offers_website/app/modules/home/offer/offer_home/home_offer_binding.dart';
import 'package:offers_website/app/modules/home/shared/home_repository.dart';
import 'package:offers_website/app/modules/home/shop/home_shop/home_shop_binding.dart';
import 'package:offers_website/core/widgets/app_bar/app_bar_controller.dart';
import 'package:offers_website/core/widgets/floating_abb_bar/floating_app_bar_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeRepository(dio: Get.find()));
    Get.put(HomeController(homeRepository: Get.find()));
    IdentityBinding().dependencies();
    HomeCategoryBinding().dependencies();
    HomeShopBinding().dependencies();
    DistrictsBinding().dependencies();
    HomeOfferBinding().dependencies();
    Get.put(AppBarController(), permanent: true);
    Get.put(FloatingAppBarController(), permanent: true);
  }
}
