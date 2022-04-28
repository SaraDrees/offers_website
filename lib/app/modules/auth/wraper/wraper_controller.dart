import 'package:offers_website/app/modules/auth/shared/auth_repository.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class WraperController extends GetxStateController {
  final AuthRepository authRepository;

  WraperController({required this.authRepository});
}
