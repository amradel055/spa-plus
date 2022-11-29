import 'dart:convert';

import '../../user_acount.dart';

VerifyLoginResponseDto verifyLoginResponseDtoFromJson(String str) => VerifyLoginResponseDto.fromJson(json.decode(str));

String verifyLoginResponseDtoToJson(VerifyLoginResponseDto data) => json.encode(data.toJson());

class VerifyLoginResponseDto {
  VerifyLoginResponseDto({
    required this.accessToken,
    required this.userAccount,
  });

  final String accessToken;
  final UserAccount userAccount;

  factory VerifyLoginResponseDto.fromJson(Map<String, dynamic> json) => VerifyLoginResponseDto(
    accessToken: json["accessToken"],
    userAccount: UserAccount.fromJson(json["userAccount"]),
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "userAccount": userAccount.toJson(),
  };
}
