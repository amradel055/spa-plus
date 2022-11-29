// To parse this JSON data, do
//
//     final verifyLoginRequestDto = verifyLoginRequestDtoFromJson(jsonString);

import 'dart:convert';

VerifyLoginRequestDto verifyLoginRequestDtoFromJson(String str) => VerifyLoginRequestDto.fromJson(json.decode(str));

String verifyLoginRequestDtoToJson(VerifyLoginRequestDto data) => json.encode(data.toJson());

class VerifyLoginRequestDto {
  VerifyLoginRequestDto({
    required this.phoneNumber,
    required this.firebaseId,
    required this.token,
  });

  final String phoneNumber;
  final String? firebaseId;
  final String? token;

  factory VerifyLoginRequestDto.fromJson(Map<String, dynamic> json) => VerifyLoginRequestDto(
    phoneNumber: json["phoneNumber"],
    firebaseId: json["firebaseId"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "phoneNumber": phoneNumber,
    "firebaseId": firebaseId,
    "token": token,
  };
}
