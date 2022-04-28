import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_binding.dart';
import 'package:offers_website/app/modules/home/category/home_category/home_category_controller.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_binding.dart';

class HomeCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeCategoryController());
    CategoryBinding().dependencies();
    AddCategoryBinding().dependencies();
  }
}
