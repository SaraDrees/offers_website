import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/employee/show_employee/show_employee_controller.dart';

class ShowEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShowEmployeeController(identityRepository: Get.find()));
  }
}
