import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/shared/auth_repository.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class LoginController extends GetxStateController {
  AuthRepository authRepository;

  LoginController({required this.authRepository});

  RxInt index = 0.obs;

  void changeIndex(int i) {
    index.value = i;
    update();
  }
}
