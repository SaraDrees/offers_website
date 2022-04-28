import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/home_category/home_category_controller.dart';

class CategoryHome extends GetView<HomeCategoryController> {
  const CategoryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
    //   Obx(() {
    //     return TabView(
    //         currentIndex: controller.selectedTab.value,
    //         onChanged: (i) => controller.selectedTab.value = i,
    //         tabs: const [
    //           Tab(
    //               text: Text("Categories"),
    //               closeIcon: null,
    //               icon: Icon(FluentIcons.collapse_menu)),
    //           Tab(
    //               text: Text("add Category"),
    //               closeIcon: null,
    //               icon: Icon(FluentIcons.add_in))
    //         ],
    //         bodies: const [
    //           CategoryView(),
    //           AddCategoryView()
    //         ]);
    //   });
  }
}
