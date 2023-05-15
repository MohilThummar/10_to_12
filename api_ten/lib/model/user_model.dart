// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  DateTime? createdAt;
  String? name;
  String? avatar;
  String? address;
  String? companyName;
  String? id;

  UserModel({
    this.createdAt,
    this.name,
    this.avatar,
    this.address,
    this.companyName,
    this.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        address: json["address"],
        companyName: json["company_name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "address": address,
        "company_name": companyName,
        "id": id,
      };
}
