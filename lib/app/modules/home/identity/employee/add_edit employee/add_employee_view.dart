import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/loading.dart';
import 'package:offers_website/core/widgets/widget_state.dart';

class AddEmployeeView extends GetView<IdentityController> {
  const AddEmployeeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(
        builder: (customSize) => Padding(
            padding: EdgeInsets.symmetric(
                horizontal: customSize.setWidth(20),
                vertical: customSize.setHeight(80)),
            child: StateBuilder<IdentityController>(
                id: "addEmployeeId",
                disableState: true,
                initialWidgetState: WidgetState.loaded,
                builder: (widgetState, controller) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "user name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: const Text("data"))],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " password",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: Obx(() {
                                        return const Text("data");})),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " full name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: const Text("data"))],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " phone",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),
                                  Container(
                                      width: customSize.screenWidth / 4,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: customSize.setWidth(2)),
                                      child: const Text("data"))],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: customSize.setHeight(100),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    " Permissions",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: customSize.setHeight(5),
                                  ),

                                  SizedBox(
                                    width: customSize.screenWidth -
                                        customSize.setWidth(50),
                                    height: customSize.screenHeight / 4,
                                    child: Scrollbar(
                                        controller: controller
                                            .horizontalScrollController,
                                        child: ListView.builder(
                                            controller: controller
                                                .horizontalScrollController,
                                            scrollDirection: Axis.horizontal,
                                            itemCount:
                                                controller.permissions.length,
                                            itemBuilder: (_, i) => Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    GetBuilder<
                                                            IdentityController>(
                                                        id: controller
                                                            .permissions[i].id,
                                                        builder: (controller) {
                                                          return const Text(
                                                              "data");}),
                                                    SizedBox(
                                                      width: customSize
                                                          .setWidth(2),
                                                    ),
                                                    Text(
                                                      controller
                                                          .permissions[i].name,
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: customSize
                                                          .setWidth(5),
                                                    ),
                                                  ],
                                                ))),
                                  )],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: customSize.setHeight(150),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widgetState == WidgetState.loading &&
                                    controller.isAddRequest
                                ? const Loading()
                                : const Text("data"),
                            SizedBox(
                              width: customSize.setWidth(10),
                            ),
                          ],
                        )
                      ]);
                })));
  }
}
