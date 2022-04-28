import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/offer/offer_home/home_offer_controller.dart';
import 'package:offers_website/app/modules/home/offer/show_offers/show_offers_binding.dart';

class HomeOfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeOfferController());
    ShowOffersBinding().dependencies();
  }
}
