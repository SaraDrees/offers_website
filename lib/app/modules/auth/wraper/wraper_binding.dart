import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/shared/auth_repository.dart';
import 'package:offers_website/app/modules/auth/wraper/wraper_controller.dart';

class Wraper extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthRepository(dio: Get.find<Dio>()));
    Get.put(WraperController(authRepository: Get.find()));
  }
}
