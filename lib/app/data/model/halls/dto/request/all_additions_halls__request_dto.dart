class AllAdditionsHallsRequest {
  AllAdditionsHallsRequest({
    required this.appId,
  });

  int appId;

  factory AllAdditionsHallsRequest.fromJson(Map<String, dynamic> json) => AllAdditionsHallsRequest(
    appId: json["appId"],
  );

  Map<String, dynamic> toJson() => {
    "appId": appId,
  };
}