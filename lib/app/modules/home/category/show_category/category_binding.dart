import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_controller.dart';
import 'package:offers_website/app/modules/home/shared/home_repository.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController(homeRepository: Get.find<HomeRepository>()));
  }
}
