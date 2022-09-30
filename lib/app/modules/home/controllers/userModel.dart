// To parse this JSON data, do
//
//     final recipaModel = recipaModelFromJson(jsonString);

import 'dart:convert';

RecipaModel recipaModelFromJson(String str) =>
    RecipaModel.fromJson(json.decode(str));

String recipaModelToJson(RecipaModel data) => json.encode(data.toJson());

class RecipaModel {
  RecipaModel({
    this.email,
    this.token,
    this.uid,
  });

  String? email;
  String? token;
  String? uid;

  factory RecipaModel.fromJson(Map<String, dynamic> json) => RecipaModel(
        email: json["email"] == null ? null : json["email"],
        token: json["token"] == null ? null : json["token"],
        uid: json["uid"] == null ? null : json["uid"],
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "token": token == null ? null : token,
        "uid": uid == null ? null : uid,
      };
}
