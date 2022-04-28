import 'package:dio/dio.dart';
import 'package:offers_website/core/exceptions/exceptions.dart';
import 'package:offers_website/core/models/category_model.dart';
import 'package:offers_website/core/models/product_model.dart';
import 'package:offers_website/core/models/shop_model.dart';

class OfferRepository {
  Dio dio;
  OfferRepository({required this.dio});

  Future<void> addShop(Shop shop) async {
    try {} catch (error) {
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
      return [];
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> addCategory(Category category) async {
    try {} catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<void> editCategory(Category newCategory, int categoryId) async {
    try {} catch (error) {
      throw ExceptionHandler(error);
    }
  }
}
