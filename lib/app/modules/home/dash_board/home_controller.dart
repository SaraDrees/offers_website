import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/category/add_category/add_category_view.dart';
import 'package:offers_website/app/modules/home/category/show_category/category_view.dart';
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

  int selectedIdentity = 1;

  void getCategories() async {
    categories.clear();
    requestMethod(
        ids: ["categoryListId"],
        requestType: RequestType.getData,
        function: () async {
          categories.addAll(await homeRepository.getCategories());
          log("categoriesLength :::${categories.length}");
          return null;
        });
  }

  @override
  void onInit() {
    generateFloatingAppBar(0);
    getCategories();
    log("${imageUrl.length}");
    super.onInit();
  }

  // @override
  // void onReady() {
  //   getCategories();
  //   super.onReady();
  // }

  final List isHovering = [
    false,
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
  final List floatingBarisHovering = [
    false,
    false,
    false,
    // false,
    // false,
    // false,
    // false,
    // false,
    // false
  ];

  final List imageUrl = [
    {'url': 'assets/images/lock_screen.jpg', 'selected': false},
    {'url': 'assets/images/wallpaper.jpg', 'selected': false}
  ];

  List screens = [];
  int screenIndex = 0;
  void changeScreen(int index) {
    screenIndex = index;
    update(["currentScreenId"]);
  }

  showOnHoverSelectEffect(index, value, String widgetId) {
    isHovering[index] = value;
    update([widgetId]);
  }

  hoverEffectInfloatingBar(index, value, String widgetId) {
    floatingBarisHovering[index] = value;
    update([widgetId]);
  }

  List<String> floatingAppBar = [];
  generateFloatingAppBar(int i) {
    switch (i) {
      case 0:
        {
          floatingAppBar.clear();
          screens.clear();
          // screens.add(const HomeScreen());
          screenIndex = 0;
          update(["floatingAppBarId", "currentScreenId"]);
          break;
        }
      case 1:
        {
          floatingAppBar.clear();
          floatingAppBar.addAll(
              ["Employee", "Add Employee" "Users", "Users how show our Shop"]);
          floatingBarisHovering.addAll([false, false, false, false]);
          screens.clear();
          // screens.addAll([
          //   const ShowEmployeeView(),
          //   const AddEmployeeView(),
          //   ShowUserView(index: 0),
          //   ShowUserView(
          //     index: 1,
          //   )
          // ]);
          screenIndex = 0;
          update(["floatingAppBarId", "currentScreenId"]);
          break;
        }
      case 2:
        {
          floatingAppBar.clear();
          floatingAppBar.addAll(["add Districts", "All Districts"]);
          floatingBarisHovering.addAll([false, false]);
          screens.clear();
          // screens.addAll([
          //   // const ShowEmployeeView(),
          //   const AddEmployeeView(),
          // ]);
          screenIndex = 0;
          update(["floatingAppBarId", "currentScreenId"]);
          break;
        }
      case 3:
        {
          floatingAppBar.clear();
          floatingAppBar.addAll(["add Category", "All Category"]);
          floatingBarisHovering.addAll([false, false]);
          screens.clear();
          screens.addAll([
            const CategoryView(),
            const AddCategoryView(),
            // ShowUserView(index: 0),
            // ShowUserView(
            //   index: 1,
            // )
          ]);
          screenIndex = 0;
          update(["floatingAppBarId", "currentScreenId"]);
          break;
        }
      case 4:
        {
          floatingAppBar.clear();
          floatingAppBar.addAll(["add Shop", "All Shops"]);
          floatingBarisHovering.addAll([false, false]);
          update(["floatingAppBarId"]);
          break;
        }
      case 5:
        {
          floatingAppBar.clear();
          floatingAppBar.addAll(["add Offer", "All Offers"]);
          floatingBarisHovering.addAll([false, false]);
          update(["floatingAppBarId"]);
          break;
        }
      case 6:
        {
          floatingAppBar.clear();
          floatingAppBar.addAll(["add Offer Type", "All Offer Types"]);
          floatingBarisHovering.addAll([false, false]);
          update(["floatingAppBarId"]);
          break;
        }
      case 7:
        {
          floatingAppBar.clear();
          floatingAppBar.addAll(["add Shop", "All Shops"]);
          floatingBarisHovering.addAll([false, false]);
          update(["floatingAppBarId"]);
          break;
        }
      default:
        {
          floatingAppBar.clear();
          update(["floatingAppBarId"]);
          break;
        }
    }
  }
}
