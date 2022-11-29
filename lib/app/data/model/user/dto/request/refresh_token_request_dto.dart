class RefreshTokenRequest {
  RefreshTokenRequest({
    required this.token,
    required this.refreshToken,
  });

  String token;
  String refreshToken;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) => RefreshTokenRequest(
    token: json["token"],
    refreshToken: json["refreshToken"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "refreshToken": refreshToken,
  };
}