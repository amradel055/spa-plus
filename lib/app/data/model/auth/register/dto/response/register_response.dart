class RegisterResponse {
  RegisterResponse({
    required this.success,
    required this.message,
    required this.token,
  });

  final String success;
  final String message;
  final String token;

  factory RegisterResponse.fromJson(dynamic json) => RegisterResponse(
    success: json["success"],
    message: json["message"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "token": token,
  };
}
