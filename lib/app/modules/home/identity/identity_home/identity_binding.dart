import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/employee/add_edit%20employee/add_employee_binding.dart';
import 'package:offers_website/app/modules/home/identity/employee/show_employee/show_employee_binding.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_controller.dart';
import 'package:offers_website/app/modules/home/identity/shared/identity_repository.dart';
import 'package:offers_website/app/modules/home/identity/user/show_users/show_user_binding.dart';

class IdentityBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(IdentityRepository(dio: Get.find()));
    Get.lazyPut(() => IdentityController(identityRepository: Get.find()));
    ShowEmployeeBinding().dependencies();
    ShowUserBinding().dependencies();
    AddEmployeeBinding().dependencies();
  }
}
