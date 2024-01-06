import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';
import 'package:offers_website/core/widgets/widget_state.dart';

class AddCategoryView extends GetView<AddCategoryController> {
  const AddCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(
      builder: (customSize) => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: customSize.setWidth(20),
            vertical: customSize.setHeight(80)),
        child: StateBuilder<AddCategoryController>(
            id: "addCategoryId",
            disableState: true,
            initialWidgetState: WidgetState.loaded,
            builder: (widgetState, controller) {
              return const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("data")],
              );
            }),
      ),
    );
  }
}
