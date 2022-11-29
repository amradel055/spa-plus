import 'package:easy_hotel/app/data/model/base_request.dart';

class LoginResponse{
  LoginResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.user,
  });

  final String accessToken;
  final String tokenType;
  final int? expiresIn;
  final User user;

  factory LoginResponse.fromJson(json) => LoginResponse(
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresIn: json["expires_in"],
    user: User.fromJson(json["user"]),
  );

  @override
  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_in": expiresIn,
    "user": user.toJson(),
  };
}

class User {
  User({
    required this.firstname,
    required this.lastname,
    required this.isMale,
    required this.mobile,
    required this.emailAddress,
    required this.birthday,
    required this.educationLevel,
  });

  final String firstname;
  final String lastname;
  final int isMale;
  final String mobile;
  final String emailAddress;
  final DateTime birthday;
  final String educationLevel;

  factory User.fromJson(Map<String, dynamic> json) => User(
    firstname: json["firstname"],
    lastname: json["lastname"],
    isMale: json["is_male"],
    mobile: json["mobile"],
    emailAddress: json["email_address"],
    birthday: DateTime.parse(json["birthday"]),
    educationLevel: json["education_level"],
  );

  Map<String, dynamic> toJson() => {
    "firstname": firstname,
    "lastname": lastname,
    "is_male": isMale,
    "mobile": mobile,
    "email_address": emailAddress,
    "birthday": birthday.toIso8601String(),
    "education_level": educationLevel,
  };
}
