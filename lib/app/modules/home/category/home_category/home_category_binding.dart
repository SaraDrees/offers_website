import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_controller.dart';
import 'package:offers_website/app/modules/home/category/home_category/home_category_controller.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_controller.dart';

class HomeCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeCategoryController());
    Get.lazyPut(() => CategoryController(homeRepository: Get.find()));
    Get.lazyPut(() => AddCategoryController(homeRepository: Get.find()));
  }
}
