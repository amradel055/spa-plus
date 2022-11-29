import 'dart:convert';

class UserAccount {
  UserAccount({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.phoneNumber,
    required this.appId,
    required this.firebaseId,
    required this.preferredLanguage,
    required this.preferredTheme,
  });

  final String id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String name;
  final String phoneNumber;
  final String? appId;
  final String? firebaseId;
  final String preferredLanguage;
  final String preferredTheme;

  factory UserAccount.fromRawJson(String str) => UserAccount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());


  factory UserAccount.fromJson(Map<String, dynamic> json) => UserAccount(
    id: json["id"],
    createdAt: json["createdAt"] == null?null:DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null?null:DateTime.parse(json["updatedAt"]),
    name: json["name"],
    phoneNumber: json["phoneNumber"],
    appId: json["appId"],
    firebaseId: json["firebaseId"],
    preferredLanguage: json["preferredLanguage"],
    preferredTheme: json["preferredTheme"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "name": name,
    "phoneNumber": phoneNumber,
    "appId": appId,
    "firebaseId": firebaseId,
    "preferredLanguage": preferredLanguage,
    "preferredTheme": preferredTheme,
  };
}
