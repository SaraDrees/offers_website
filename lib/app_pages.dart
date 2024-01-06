import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/auth_module.dart';
import 'package:offers_website/app/modules/home/home_module.dart';
import 'package:offers_website/app/modules/home/identity/identity_module.dart';

class AppPages {
  AppPages._();
  static final List<GetPage<dynamic>> appRoutes = [
    ...AuthModule.authPages,
    ...HomeModule.homePages,
    ...IdentityModule.identityPages
  ];
}
