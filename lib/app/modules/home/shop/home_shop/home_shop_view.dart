import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/home_shop/home_shop_controller.dart';

class HomeShopView extends GetView<HomeShopController> {
  const HomeShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("data");
    // return Obx(() => TabView(
    //       currentIndex: controller.selectedTab.value,
    //       onChanged: (i) => controller.updateSelectedTab(i),
    //       tabs: const [
    //         Tab(
    //             text: Text("Shops"),
    //             closeIcon: null,
    //             icon: Icon(FluentIcons.collapse_menu)),
    //         Tab(
    //             text: Text("add Shops"),
    //             closeIcon: null,
    //             icon: Icon(FluentIcons.add_in))
    //       ],
    //       bodies: [const ShopsView(), const AddShopView()],
    //     ));
  }
}
