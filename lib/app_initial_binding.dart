import 'package:get/get.dart';
import 'package:offers_website/core/dio/factory.dart';

class AppInitialBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put(
    //   StorageService.instance,
    //   permanent: true,
    // );
    Get.put(
      DioFactory.dioSetUp(),
      permanent: true,
    );
  }
}
