class HousekeepingDetailRequest {
  HousekeepingDetailRequest({
    required this.groupId,
  });

  int groupId;

  factory HousekeepingDetailRequest.fromJson(Map<String, dynamic> json) => HousekeepingDetailRequest(
    groupId: json["groupId"],
  );

  Map<String, dynamic> toJson() => {
    "groupId": groupId,
  };
}