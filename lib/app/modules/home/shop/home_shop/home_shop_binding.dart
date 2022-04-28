import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/add_shop/add_shop_binding.dart';
import 'package:offers_website/app/modules/home/shop/home_shop/home_shop_controller.dart';
import 'package:offers_website/app/modules/home/shop/show_shops/shop_binding.dart';

class HomeShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeShopController());
    ShopsBinding().dependencies();
    AddShopBinding().dependencies();
  }
}
