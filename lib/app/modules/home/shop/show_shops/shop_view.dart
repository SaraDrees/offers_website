import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/show_shops/shop_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
// import 'package:offers_website/app/moduless/offer/shop/show_shops/shop_controller.dart';

class ShopsView extends GetView<ShopsController> {
  const ShopsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
        textDirection: TextDirection.ltr,
        child: Text("data"));
    });
  }

 }
