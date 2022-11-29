class LoginRequestDto {
  LoginRequestDto({
    this.email,
    this.password,
  });

  String? email;
  String? password;

  Map<String, dynamic> toJson() => {
    "email_address": email,
    "password": password,
  };
}
