import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/offer/offer_home/home_offer_controller.dart';

class HomeOfferView extends GetView<HomeOfferController> {
  const HomeOfferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
    // return Obx(() => TabView(
    //         currentIndex: controller.selectedTab.value,
    //         onChanged: (i) => controller.selectedTab.value = i,
    //         tabs: const [
    //           Tab(
    //               text: Text("Offers"),
    //               closeIcon: null,
    //               icon: Icon(FluentIcons.collapse_menu)),
    //           Tab(
    //               text: Text("add Offer"),
    //               closeIcon: null,
    //               icon: Icon(FluentIcons.add_in))
    //         ],
    //         bodies: const [
    //           ShowOffersView(),
    //           SizedBox()
    //         ]));
  }
}
