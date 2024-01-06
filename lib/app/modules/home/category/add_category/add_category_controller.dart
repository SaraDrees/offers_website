import 'package:get/get.dart';
import 'package:offers_website/app/modules/home/shared/home_repository.dart';
import 'package:offers_website/core/models/category_model.dart';
import 'package:offers_website/core/services/request_mixin.dart';
import 'package:offers_website/core/services/state_mixin.dart';

class AddCategoryController extends GetxStateController {
  Category? categoryItemValue;
  HomeRepository homeRepository;
  String? name;
  var isActive = false.obs;
  String? imageUrl;
  Category? selectedParent;
  List<Category> parentCategory = [];
  bool isAddRequest = false;

  AddCategoryController({required this.homeRepository});

  Future addCategory() async {
    final Category category = Category(
        id: "id",
        name: name ?? "",
        image: imageUrl ?? "ll",
        isActive: isActive.value,
        isBranch: selectedParent != null,
        mainCategory: selectedParent,
        subCategories: []);
    requestMethod(
        ids: ["addCategoryId"],
        requestType: RequestType.postData,
        function: () async {
          isAddRequest = true;
          await homeRepository.addCategory(category);
          resetView();
          return null;
        });
  }

  void getCategories() {
    requestMethod(
        ids: ["addCategoryId"],
        requestType: RequestType.getData,
        function: () async {
          parentCategory.addAll(await homeRepository.getCategories());
          return null;
        });
  }

  void editSelectedParent(Category selectedCategory) {
    selectedParent = selectedCategory;
    categoryItemValue = selectedCategory;
    update(["parentCategoryId"]);
  }

  void resetView() {
    name = null;
    imageUrl = null;
    selectedParent = null;
    categoryItemValue = null;
    isActive.value = false;
    update(["addCategoryId"]);
  }

  @override
  void onInit() async {
    super.onInit();
  }
}
