part of '../auth_module.dart';

class _AuthPages {
  _AuthPages._();

  static List<GetPage> authPages = [
    GetPage(
      name: AuthRoutes.loginRoute,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: AuthRoutes.registerRoute,
        page: () => const RegisterView(),
        binding: RegisterBinding())
  ];
}
