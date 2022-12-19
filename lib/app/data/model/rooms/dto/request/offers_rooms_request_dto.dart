class OffersRoomsRequest {
  OffersRoomsRequest({
    required this.appId,
  });

  int appId;

  factory OffersRoomsRequest.fromJson(Map<String, dynamic> json) => OffersRoomsRequest(
    appId: json["appId"],
  );

  Map<String, dynamic> toJson() => {
    "appId": appId,
  };
}