class AllHallsRequest {
  AllHallsRequest({
    required this.branchId,
  });

  int branchId;

  factory AllHallsRequest.fromJson(Map<String, dynamic> json) => AllHallsRequest(
    branchId: json["branchId"],
  );

  Map<String, dynamic> toJson() => {
    "branchId": branchId,
  };
}