import 'package:get/get.dart';
import 'package:offers_website/app/modules/auth/login/login_binding.dart';
import 'package:offers_website/app/modules/auth/login/login_view.dart';
import 'package:offers_website/app/modules/auth/register/register_binding.dart';
import 'package:offers_website/app/modules/auth/register/register_view.dart';
import 'package:offers_website/app/modules/auth/shared/constant/auth_routes.dart';

part 'shared/auth_pages.dart';

class AuthModule {
  static String get authInitialRoute => AuthRoutes.loginRoute;
  static List<GetPage> get authPages => _AuthPages.authPages;
}
