import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/home_module.dart';
import 'package:offers_website/app_initial_binding.dart';
import 'package:offers_website/app_pages.dart';

part 'app_initialize.dart';

void main() async {
  await _preInitializations();
  runApp(GetMaterialApp(
    initialRoute: HomeModule.homeInitialRoute,
    getPages: AppPages.appRoutes,
    initialBinding: AppInitialBindings(),
    debugShowCheckedModeBanner: false,
  ));
}
