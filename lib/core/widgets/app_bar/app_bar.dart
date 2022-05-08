import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/identity_module.dart';
import 'package:offers_website/app/modules/home/shared/home_routes.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/app_bar/app_bar_controller.dart';

class CustomAppBar extends GetView<AppBarController>
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final CustomSize customSize;
  CustomAppBar({required this.customSize, Key? key})
      : preferredSize = Size(customSize.screenWidth, 1000),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppBarController>(
        id: "appBarId",
        builder: (controller) {
          return Container(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Text(
                    'OFFERS',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(width: customSize.screenWidth / 30),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.currentRoute == HomeRoutes.homeRoute
                                ? null
                                : Get.offAndToNamed(HomeRoutes.homeRoute);
                            // controller.generateFloatingAppBar(0);
                          },
                          onHover: (i) {
                            controller.showOnHoverSelectEffect(
                                0, i, "appBarId");
                          },
                          child: Text(
                            'Home',
                            style: TextStyle(
                              color: controller.isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              Get.currentRoute ==
                                      IdentityModule.homeInitialRoute
                                  ? null
                                  : Get.offAndToNamed(
                                      IdentityModule.homeInitialRoute);
                              // controller.generateFloatingAppBar(1);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  1, i, "appBarId");
                            },
                            child: Text(
                              'Identity',
                              style: TextStyle(
                                color: controller.isHovering[1]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              // controller.generateFloatingAppBar(2);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  2, i, "appBarId");
                            },
                            child: Text(
                              'Districts',
                              style: TextStyle(
                                color: controller.isHovering[2]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              // controller.generateFloatingAppBar(3);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  3, i, "appBarId");
                            },
                            child: Text(
                              'Categories',
                              style: TextStyle(
                                color: controller.isHovering[3]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              // controller.generateFloatingAppBar(4);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  4, i, "appBarId");
                            },
                            child: Text(
                              'Shops',
                              style: TextStyle(
                                color: controller.isHovering[4]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              // controller.generateFloatingAppBar(5);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  5, i, "appBarId");
                            },
                            child: Text(
                              'Offers',
                              style: TextStyle(
                                color: controller.isHovering[5]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              // controller.generateFloatingAppBar(6);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  6, i, "appBarId");
                            },
                            child: Text(
                              'Offer Types',
                              style: TextStyle(
                                color: controller.isHovering[6]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              // controller.generateFloatingAppBar(7);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  7, i, "appBarId");
                            },
                            child: Text(
                              'User Like/Fav',
                              style: TextStyle(
                                color: controller.isHovering[7]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                        SizedBox(width: customSize.screenWidth / 30),
                        InkWell(
                            onTap: () {
                              // controller.generateFloatingAppBar(8);
                            },
                            onHover: (i) {
                              controller.showOnHoverSelectEffect(
                                  8, i, "appBarId");
                            },
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                color: controller.isHovering[8]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: customSize.screenWidth / 50,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (i) {
                      controller.showOnHoverSelectEffect(9, i, "appBarId");
                    },
                    child: Text(
                      'LogOut',
                      style: TextStyle(
                        color: controller.isHovering[9]
                            ? Colors.blue.shade200
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
