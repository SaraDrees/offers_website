import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/shared/identity_repository.dart';
import 'package:offers_website/core/services/request_mixin.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class ShowUserController extends GetxStateController {
  final IdentityRepository identityRepository;
  RxList allUsers = [].obs;

  ShowUserController({required this.identityRepository});

  void getAllUser() async {
    requestMethod(
        ids: ["stateBuilder ids"],
        requestType: RequestType.getData,
        function: () async {
          return null;
        });
  }
}
