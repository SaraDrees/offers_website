import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_controller.dart';
import 'package:offers_website/core/services/size_configration.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return const Directionality(
          textDirection: TextDirection.ltr, child: Text("data"));
    });
  }}
