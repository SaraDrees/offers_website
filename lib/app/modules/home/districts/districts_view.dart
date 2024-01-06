import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/districts/districts_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class DistrictsView extends GetView<DistrictsConroller> {
  const DistrictsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
          textDirection: TextDirection.ltr, child: Text("data"));
    });
  }
}
