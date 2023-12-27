import 'package:offers_website/app/modules/home/identity/shared/identity_repository.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class AddEmployeeController extends GetxStateController {
  IdentityRepository identityRepository;
  AddEmployeeController({required this.identityRepository});
}
