import 'package:get/get.dart';
import 'package:offers_website/app/modules/offer/products/show_products/products_controller.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductsController());
  }
}
