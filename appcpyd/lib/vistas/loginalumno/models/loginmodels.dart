// To parse this JSON data, do
//
//     final loginm = loginmFromJson(jsonString);

import 'dart:convert';

Loginm loginmFromJson(String str) => Loginm.fromJson(json.decode(str));

String loginmToJson(Loginm data) => json.encode(data.toJson());

class Loginm {
  Loginm({
    this.token,
    this.sign,
    this.redirectUrl,
    this.created,
  });

  String? token;
  String? sign;
  String? redirectUrl;
  DateTime? created;

  factory Loginm.fromJson(Map<String, dynamic> json) => Loginm(
        token: json["token"],
        sign: json["sign"],
        redirectUrl: json["redirectUrl"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "sign": sign,
        "redirectUrl": redirectUrl,
        "created": created!.toIso8601String(),
      };
}
