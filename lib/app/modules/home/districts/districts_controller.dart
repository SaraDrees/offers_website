import 'package:offers_website/app/modules/home/shared/home_repository.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class DistrictsConroller extends GetxStateController {
  HomeRepository homeRepository;

  DistrictsConroller({required this.homeRepository});
}
