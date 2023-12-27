import 'package:dio/dio.dart';
import 'package:offers_website/core/dio/dio_controller.dart';
import 'package:offers_website/core/exceptions/exceptions.dart';
import 'package:offers_website/core/models/category_model.dart';
import 'package:offers_website/core/models/product_model.dart';
import 'package:offers_website/core/models/shop_model.dart';

class HomeRepository {
  Dio dio;
  HomeRepository({required this.dio});

  Future<void> addShop(Shop shop) async {
    try {
      dio.post("${DioController.baseUrl}/shop", queryParameters: {});
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> editShop(Shop newShop, int shopId) async {
    try {} catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<List<Shop>> getShops() async {
    try {
      return [];
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<List<Product>> getProduct(int id) async {
    try {
      return [];
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> addProduct(Product product) async {
    try {} catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> editProduct(Product newProduct, int productId) async {
    try {} catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<List<Category>> getCategories() async {
    try {
      final result = await dio.get("${DioController.baseUrl}/category");
      return categoryFromJson(result.data);
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> addCategory(Category category) async {
    try {
      await dio.post("${DioController.baseUrl}/category",
          data: category.mainCategory == null
              ? category.mainToJson()
              : category.branchToJson());
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> editCategory(Category newCategory, String categoryId) async {
    try {
      await dio.patch("${DioController.baseUrl}/category/$categoryId",
          data: newCategory.mainCategory == null
              ? newCategory.mainToJson()
              : newCategory.branchToJson());
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> deleteCategory(String categoryId) async {
    try {
      await dio
          .delete("${DioController.baseUrl}/category/$categoryId", data: {});
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> getCategoryShop() async {
    try {
      final result = await dio.get("${DioController.baseUrl}/category/shop");
      categoryFromJson(result.data);
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> getOneCategroy(String categoryId) async {
    try {
      final result =
          await dio.get("${DioController.baseUrl}/category/$categoryId");
      Category.fromJson(result.data);
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }
}
