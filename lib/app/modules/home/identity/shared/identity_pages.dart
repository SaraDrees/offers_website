part of '../identity_module.dart';

class _IdentityPages {
  _IdentityPages._();

  static List<GetPage> identityPages = [
    GetPage(
        name: IdentityRoutes.userRoute,
        page: () => ShowUserView(),
        binding: ShowUserBinding()),
    GetPage(
        name: IdentityRoutes.employeeRoute,
        page: () => ShowEmployeeView(),
        binding: ShowEmployeeBinding()),
    GetPage(
        name: IdentityRoutes.addEmployee,
        page: () => const AddEmployeeView(),
        binding: IdentityBinding()),
    GetPage(
        name: IdentityRoutes.identityHomeRoute,
        page: () => const IdentityHomeView(),
        binding: IdentityBinding())
  ];
}
