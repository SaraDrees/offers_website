import 'package:dio/dio.dart';
import 'package:offers_website/core/dio/dio_controller.dart';
import 'package:offers_website/core/exceptions/exceptions.dart';
import 'package:offers_website/core/models/employee_model.dart';
import 'package:offers_website/core/models/product_model.dart';
import 'package:offers_website/core/models/shop_model.dart';
import 'package:offers_website/core/models/user_model.dart';

class IdentityRepository {
  Dio dio;

  IdentityRepository({required this.dio});

  Future<List<Employee>> getEmployees() async {
    try {
      final employees = await dio.get("${DioController.baseUrl}/employee");
      return employeeFromJson(employees.data);
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future addEmployee(Employee employee) async {
    try {
      await dio.post("${DioController.baseUrl}/employee",
          data: employee.toJson());
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<List<Permission>> getPermissions() async {
    try {
      final permissions = await dio.get("${DioController.baseUrl}/permission");
      return permissionFromJson(permissions.data);
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future addPermissions() async {
    try {
      await dio.post("${DioController.baseUrl}/permission");
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future givePermissions(
      List<Permission> permissions, String employeeId) async {
    try {
      await dio.patch("${DioController.baseUrl}/givePermissions/$employeeId",
          data: {permissionToJson(permissions)});
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<List<User>> getAllUser() async {
    try {
      final users = await dio.get("${DioController.baseUrl}/user");
      return userFromJson(users.data);
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<List<Product>> userLikedProducts(String userId) async {
    try {
      final products = await dio.get("${DioController.baseUrl}/likedProduct",
          queryParameters: {"userId": userId});
      return products.data;
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }

  Future<List<Shop>> userFavoriteShops(String userId) async {
    try {
      final shops = await dio.get("${DioController.baseUrl}/favoriteShops",
          queryParameters: {"user_id": userId});
      return shops.data;
    } catch (error) {
      throw ExceptionHandler(error);
    }
  }
}
