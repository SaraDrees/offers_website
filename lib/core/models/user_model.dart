

import 'dart:convert';

List<User> userFromJson(List str) => List<User>.from(str.map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        required this.id,
        required this.fullName,
        required this.phone,
        required this.birthday,
        required this.createdAt,
        required this.accessToken,
        required this.refreshToken,
    });

    String id;
    String fullName;
    String phone;
    DateTime birthday;
    DateTime createdAt;
    String accessToken;
    String refreshToken;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id:  json["id"],
        fullName:  json["full_name"],
        phone:  json["phone"],
        birthday: DateTime.parse(json["birthday"]),
        createdAt: DateTime.parse(json["created_at"]),
        accessToken:json["access_token"]??"",
        refreshToken: json["refresh_token"]??"",
    );

    Map<String, dynamic> toJson() => {
        "id":  id,
        "full_name": fullName,
        "phone":  phone,
        "birthday":  birthday.toIso8601String(),
        "created_at":  createdAt.toIso8601String(),
    };
}
