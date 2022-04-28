import 'package:offers_website/core/models/employee_model.dart';

class Shop {
  int id;
  String name;
  List<String> images;
  List<SocialUrl> socialUrls;
  String phone;
  String description;
  bool isSpecial;
  bool isActive;
  String address;
  Employee employee;
  Area area;

  Shop(
      {required this.id,
      required this.name,
      required this.description,
      required this.images,
      required this.socialUrls,
      required this.phone,
      required this.isActive,
      this.isSpecial = false,
      required this.area,
      required this.address,
      required this.employee});
}

class Area {
  int id;
  String name;
  Area({required this.id, required this.name});
}

class SocialUrl {
  int id;
  String name;
  String type;

  SocialUrl({required this.id, required this.name, required this.type});
}
