import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_controller.dart';

class IdentityHomeView extends GetView<IdentityController> {
  const IdentityHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return const Text("data");
      // return TabView(
      //     currentIndex: controller.selectedTab.value,
      //     onChanged: (i) => controller.updateSelectedTab(i),
      //     tabs: const [
      //       Tab(
      //           text: Text("Employee"),
      //           closeIcon: null,
      //           icon: Icon(FluentIcons.employee_self_service)),
      //       Tab(
      //           text: Text("add Employee"),
      //           closeIcon: null,
      //           icon: Icon(FluentIcons.add)),
      //       Tab(
      //           text: Text("Users"),
      //           closeIcon: null,
      //           icon: Icon(FluentIcons.group)),
      //       Tab(
      //           text: Text("Users how show our shops"),
      //           closeIcon: null,
      //           icon: Icon(FluentIcons.group_list))
      //     ],
      //     bodies: [
      //       const ShowEmployeeView(),
      //       const AddEmployeeView(),
      //       ShowUserView(
      //         index: 1,
      //       ),
      //       ShowUserView(
      //         index: 2,
      //       ),
      //     ]);
    });
  }
}
