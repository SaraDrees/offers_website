import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/districts/districts_controller.dart';

class DistrictsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DistrictsConroller(homeRepository: Get.find()));
  }
}
