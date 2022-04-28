// To parse this JSON data, do
//
//     final employee = employeeFromJson(jsonString);

import 'dart:convert';

List<Employee> employeeFromJson(List str) =>
    List<Employee>.from(str.map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

List<Permission> permissionFromJson(List str) =>
    List<Permission>.from(str.map((x) => Permission.fromJson(x)));
String permissionToJson(List<Permission> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  Employee({
    required this.id,
    required this.username,
    required this.fullName,
    required this.phone,
    required this.isActive,
    required this.permissions,
    this.password = "********",
  });

  String id;
  String username;
  String password;
  String fullName;
  String phone;
  bool isActive;
  List<Permission> permissions;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        username: json["username"],
        fullName: json["full_name"],
        phone: json["phone"],
        isActive: json["is_active"],
        permissions: json["permissions"] == null
            ? []
            : List<Permission>.from(
                json["permissions"].map((x) => Permission.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "full_name": fullName,
        "phone": phone,
        "is_active": isActive,
        "permissions": List<dynamic>.from(permissions.map((x) => x.toJson())),
      };
}

class Permission {
  Permission(
      {required this.id,
      required this.name,
      required this.description,
      this.selected = false});

  String id;
  String name;
  String description;
  bool selected;

  factory Permission.fromJson(Map<String, dynamic> json) => Permission(
        id: json["id"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
      };
}
