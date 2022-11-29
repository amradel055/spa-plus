class RefreshTokenResponse {
  RefreshTokenResponse({
    required this.token,
    required this.refreshToken,
    required this.expireDate,
  });

  String token;
  String refreshToken;
  DateTime expireDate;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) => RefreshTokenResponse(
    token: json["token"],
    refreshToken: json["refreshToken"],
    expireDate: DateTime.parse(json["expireDate"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "refreshToken": refreshToken,
    "expireDate": expireDate,
  };
}