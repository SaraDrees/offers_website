import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/identity/identity_home/identity_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/app_bar/app_bar.dart';

// ignore: must_be_immutable
class ShowEmployeeView extends GetView<IdentityController> {
  CustomSize? customSize;
  ShowEmployeeView({this.customSize, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return Directionality(
          textDirection: TextDirection.ltr,
          child: Scaffold(
            appBar: CustomAppBar(customSize: customSize),
            body: const Center(
              child: Text("show Employee"),
            ),
          ));});
  }

 }
