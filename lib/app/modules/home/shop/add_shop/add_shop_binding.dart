import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/add_shop/add_shop_controller.dart';

class AddShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddShopController());
  }
}
