class LoginRequestDto {
  LoginRequestDto({
    this.phone,
    this.password,
  });

  String? phone;
  String? password;

  Map<String, dynamic> toJson() => {
    "phone": phone,
    "password": password,
  };
}
