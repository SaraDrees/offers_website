import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/show_shops/shop_controller.dart';

class ShopsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopsController());
  }
}
