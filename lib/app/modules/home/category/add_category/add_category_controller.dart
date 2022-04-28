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
          // isAddRequest = false;
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

  // Future<XFile?> openImageFile(BuildContext context) async {
  //   try {
  //     final XTypeGroup typeGroup = XTypeGroup(
  //       label: 'images',
  //       extensions: <String>['jpg', 'png'],
  //     );
  //     final List<XFile> files = await FileSelectorPlatform.instance
  //         .openFiles(acceptedTypeGroups: <XTypeGroup>[typeGroup]);
  //     if (files.isEmpty) {
  //       // Operation was canceled by the user.
  //       return null;
  //     }
  //     final XFile file = files[0];
  //     final String fileName = file.name;
  //     final String filePath = file.path;
  //     return file;
  //   } catch (e) {
  //     log("$e");
  //   }
  //   return null;

  // await showDialog<void>(
  //   context: context,
  //   builder: (BuildContext context) => ImageDisplay(fileName, filePath),
  // );
  // }

  // void saveImage(String filePath) {
  //   imageUrl = filePath;
  //   update(["categoryImageId"]);
  // }

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
    getCategories();
    super.onInit();
  }
}
