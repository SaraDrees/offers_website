import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shared/home_repository.dart';
import 'package:offers_website/core/models/category_model.dart';
import 'package:offers_website/core/services/request_mixin.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class HomeController extends GetxStateController {
  HomeRepository homeRepository;

  HomeController({required this.homeRepository});

  var selectedIndex = 0.obs;
  // final scrollController = ScrollController();
  final ScrollController horizontalScrollController = ScrollController();
  final ScrollController verticalScrollController = ScrollController();

  List<Category> categories = [];

  var startDate = DateTime.now().obs;
  var endDate = DateTime.now().obs;

  void updateSelectedIndex(int i) {
    selectedIndex.value = i;
    update();
  }

  void getCategories() async {
    categories.clear();
    requestMethod(
        ids: ["categoryTableId"],
        requestType: RequestType.getData,
        function: () async {
          await homeRepository.getCategories();
          log("categoriesLength :::${categories.length}");
          return null;
        });
  }

  @override
  void onInit() {
    getCategories();
    super.onInit();
  }

  final List isHovering = [false, false, false, false];
  final List floatingBarisHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  final List imageUrl = [
    {'url': 'assets/images/lock_screen.jpg', 'selected': false},
    'assets/images/wallpaper.jpg'
  ];

  showOnHoverSelectEffect(index, value, String widgetId) {
    isHovering[index] = value;
    update([widgetId]);
  }

  hoverEffectInfloatingBar(index, value, String widgetId) {
    floatingBarisHovering[index] = value;
    update([widgetId]);
  }
}
