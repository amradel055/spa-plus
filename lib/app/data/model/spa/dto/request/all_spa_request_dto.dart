class AllSpaRequest {
  AllSpaRequest({
    required this.appId,
  });

  int appId;

  factory AllSpaRequest.fromJson(Map<String, dynamic> json) => AllSpaRequest(
    appId: json["appId"],
  );

  Map<String, dynamic> toJson() => {
    "appId": appId,
  };
}