// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'package:offers_website/core/models/shop_model.dart';

List<Category> categoryFromJson(List str) =>
    List<Category>.from(str.map((x) => Category.fromJson(x)));

// String categoryToJson(List<Category> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  Category(
      {required this.id,
      required this.name,
      required this.image,
      required this.isActive,
      required this.isBranch,
      this.mainCategory,
      this.shops,
      required this.subCategories});

  String id;
  String name;
  String image;
  bool isActive;
  bool isBranch;
  Category? mainCategory;
  List<Shop>? shops;
  List<Category> subCategories;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      isActive: json["is_active"],
      isBranch: json["is_branch"],
      mainCategory: json["main_category"] == null
          ? null
          : Category.fromJson(json["main_category"]),
      shops: json['shops'] ?? [],
      subCategories: []);

  Map<String, dynamic> mainToJson() => {
        "name": name,
        "image": image,
        "is_active": isActive,
        "is_branch": isBranch
      };

  Map<String, dynamic> branchToJson() => {
        "name": name,
        "image": image,
        "is_active": isActive,
        "is_branch": isBranch,
        "main_category": mainCategory!.id,
      };

  factory Category.copyWith({required Category category}) => Category(
      id: category.id,
      name: category.name,
      image: category.image,
      isActive: category.isActive,
      isBranch: category.isBranch,
      subCategories: category.subCategories);
}
