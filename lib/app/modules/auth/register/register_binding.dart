import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}
