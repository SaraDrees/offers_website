import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/offer/show_offers/show_offers_controller.dart';

class ShowOffersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShowOffersController(homeRepository: Get.find()));
  }
}
