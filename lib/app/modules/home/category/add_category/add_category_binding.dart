import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_controller.dart';

class AddCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddCategoryController(homeRepository: Get.find()));
  }
}
