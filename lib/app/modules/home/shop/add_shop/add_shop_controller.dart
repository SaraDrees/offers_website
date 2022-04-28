import 'package:get/get.dart';

class AddShopController extends GetxController {
  var stepCount = 0.obs;

  String? selectedCategory;

  void updateStepCount(int i) {
    stepCount.value = i;
  }
}
