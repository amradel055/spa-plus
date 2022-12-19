class AdvertisementRequest {
  AdvertisementRequest({
    required this.appId,
    required this.itemType,
  });

  int appId;
  int itemType;

  factory AdvertisementRequest.fromJson(Map<String, dynamic> json) => AdvertisementRequest(
    appId: json["appId"],
    itemType: json["itemType"],
  );

  Map<String, dynamic> toJson() => {
    "appId": appId,
    "itemType": itemType,
  };
}