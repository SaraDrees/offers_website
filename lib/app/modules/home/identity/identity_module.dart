import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/employee/add_edit%20employee/add_employee_view.dart';
import 'package:offers_website/app/modules/home/identity/employee/show_employee/show_employee_binding.dart';
import 'package:offers_website/app/modules/home/identity/employee/show_employee/show_employee_view.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_binding.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_view.dart';
import 'package:offers_website/app/modules/home/identity/shared/identity_routes.dart';
import 'package:offers_website/app/modules/home/identity/user/show_users/show_user_binding.dart';
import 'package:offers_website/app/modules/home/identity/user/show_users/show_user_view.dart';

part 'shared/identity_pages.dart';

class IdentityModule {
  static String get homeInitialRoute => IdentityRoutes.identityHomeRoute;
  static List<GetPage> get identityPages => _IdentityPages.identityPages;
}
