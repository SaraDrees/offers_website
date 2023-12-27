import 'dart:developer';

import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shared/home_repository.dart';
import 'package:offers_website/core/models/category_model.dart';
import 'package:offers_website/core/services/request_mixin.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class CategoryController extends GetxStateController {
  HomeRepository homeRepository;

  CategoryController({required this.homeRepository});

  var categoryName = "".obs;
  List<Category> categoryList = [];
  List<Category> mainCategoryList = [];
  List<Category> subCategoryList = [];

  var expanded = false.obs;

  String? categoryItemValue;

  var readyToEdit = false.obs;
  var selectedTab = 0.obs;
  var selectedCategory = Category(
      id: "-1",
      name: "name",
      image: "imageUrl",
      isActive: false,
      isBranch: false,
      subCategories: []).obs;

  Category? tempCategory;

  void initValue() {
    getCategories();
  }

  void editCategoryInfo() async {
    if (tempCategory == selectedCategory.value) {
    } else {
      requestMethod(
          ids: ["categoryInfoId"],
          requestType: RequestType.postData,
          function: () async {
            await homeRepository.editCategory(
                tempCategory!, selectedCategory.value.id);
            selectedCategory.value = tempCategory!;
            readyToEdit.value = false;
            tempCategory = null;
            expanded.value = false;
            update();
            getCategories().then((value) {
              expanded.value = true;
              update();
            });

            // update(["categoryInfoId"]);
            // categoryList.clear();
            // final tempList = await homeRepository.getCategories();
            // categoryList.addAll(tempList
            //     .where((element) => element.isBranch == false)
            //     .toList()
            //     .reversed);
            // for (int i = 0; i < categoryList.length; i++) {
            //   categoryList[i].subCategories.addAll(tempList
            //       .where((element) =>
            //           element.isBranch == true &&
            //           element.mainCategory!.id == categoryList[i].id)
            //       .toList()
            //       .reversed);
            //   log(" ${categoryList[i].subCategories.length} /// ${categoryList[i].subCategories.isNotEmpty}");
            // }
            // log("categoryList length ::: ${categoryList.length}");
            return null;
          });
    }
  }

  void deleteCategory() {
    requestMethod(
        ids: ["categoryInfoId"],
        requestType: RequestType.postData,
        function: () async {
          await homeRepository.deleteCategory(selectedCategory.value.id);
          selectedCategory.value = Category(
              id: "-1",
              name: "name",
              image: "imageUrl",
              isActive: false,
              isBranch: false,
              subCategories: []);
          getCategories();
          return null;
        });
  }

  void upadteSelectedCategory(Category category) {
    // selectedCategory.value.isActive = !selectedCategory.value.isActive;
    selectedCategory.value = category;
    expanded.value = true;
    update();
  }

  void editIsActive(bool i) {
    selectedCategory.value.isActive = i;
    update();
  }

  Future getCategories() async {
    requestMethod(
        ids: ["categoryTreeId"],
        requestType: RequestType.getData,
        function: () async {
          categoryList.clear();
          final tempList = await homeRepository.getCategories();
          categoryList.addAll(
              tempList.where((element) => element.isBranch == false).toList());
          for (int i = 0; i < categoryList.length; i++) {
            categoryList[i].subCategories.addAll(tempList
                .where((element) =>
                    element.isBranch == true &&
                    element.mainCategory!.id == categoryList[i].id)
                .toList());
            log(" ${categoryList[i].subCategories.length} /// ${categoryList[i].subCategories.isNotEmpty}");
          }
          log("categoryList length ::: ${categoryList.length}");
          return null;
        });
  }

  void readyToEditFunc() {
    readyToEdit.value = true;
    tempCategory = Category.copyWith(category: selectedCategory.value);
  }

  @override
  void onInit() {
    // getCategories();
    super.onInit();
  }

  // @override
  // void onReady() {
  //   getCategories();
  //   super.onReady();
  // }
}
