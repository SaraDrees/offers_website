import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/employee/add_edit%20employee/add_employee_view.dart';
import 'package:offers_website/app/modules/home/identity/employee/show_employee/show_employee_view.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_controller.dart';
import 'package:offers_website/app/modules/home/identity/user/show_users/show_user_view.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/app_bar/app_bar.dart';
import 'package:offers_website/core/widgets/floating_abb_bar/floating_app_bar.dart';

class IdentityHomeView extends GetView<IdentityController> {
  const IdentityHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: ScreenSizer(builder: (customSize) {
          return Scaffold(
              extendBodyBehindAppBar: true,
              appBar: CustomAppBar(customSize: customSize),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingAppBar(
                      customSize: customSize,
                      appBarItem: controller.screens,
                      onChange: (i) {
                        log("iiii === $i");
                        controller.changeSelectedScreen(i);
                      },
                    ),
                    GetBuilder<IdentityController>(
                        id: "ScreenBuilderId",
                        builder: (controller) {
                          switch (controller.selectedScreen) {
                            case 0:
                              return ShowEmployeeView(
                                customSize: customSize,
                              );
                            // break;
                            case 1:
                              return const AddEmployeeView();
                            case 2:
                              return ShowUserView(
                                index: 0,
                              );
                            case 3:
                              return ShowUserView(
                                index: 1,
                              );
                            default:
                              return ShowEmployeeView(
                                customSize: customSize,
                              );
                          }
                        })
                  ],
                ),
              ));
        }));
  }
}
