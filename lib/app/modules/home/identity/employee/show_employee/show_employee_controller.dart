import 'package:offers_website/app/modules/home/identity/shared/identity_repository.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class ShowEmployeeController extends GetxStateController {
  IdentityRepository identityRepository;

  ShowEmployeeController({required this.identityRepository});
}
