class SpaCityRequest {
  SpaCityRequest({
    required this.cityId,
  });

  int cityId;

  factory SpaCityRequest.fromJson( dynamic json) => SpaCityRequest(
    cityId: json["cityId"],
  );

  Map<String, dynamic> toJson() => {
    "cityId": cityId,
  };
}