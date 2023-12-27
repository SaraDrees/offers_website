import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/user/show_users/show_user_controller.dart';

class ShowUserBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(IdentityRepository(dio:Get.find()));
    Get.lazyPut(() => ShowUserController(identityRepository: Get.find()));
  }
}
