import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/login/login_controller.dart';
import 'package:offers_website/app/modules/auth/shared/auth_repository.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController(authRepository: Get.find<AuthRepository>()));
  }
}
