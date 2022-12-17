class OffersHallsRequest {
  OffersHallsRequest({
    required this.appId,
    required this.currencySerial,
  });

  int appId;
  int currencySerial;

  factory OffersHallsRequest.fromJson(Map<String, dynamic> json) => OffersHallsRequest(
    appId: json["appId"],
    currencySerial: json["currencySerial"],
  );

  Map<String, dynamic> toJson() => {
    "appId": appId,
    "currencySerial": currencySerial,
  };
}