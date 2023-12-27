import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/employee/add_edit%20employee/add_employee_controller.dart';

class AddEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddEmployeeController(identityRepository: Get.find()));
  }
}
