import 'package:get/get.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class HomeCategoryController extends GetxStateController {
  var selectedTab = 0.obs;

  void updateSelectedTab(int i) {
    selectedTab.value = i;
    update();
  }
}
