import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shop/add_shop/add_shop_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class AddShopView extends GetView<AddShopController> {
  const AddShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return Container(
        padding: EdgeInsets.symmetric(
            vertical: customSize.setHeight(40),
            horizontal: customSize.setWidth(20)),
        child: const Text("data"),
        );
    });
  }
}
