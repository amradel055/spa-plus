class CitiesRequest {
  CitiesRequest({
    required this.branchId,
  });

  int branchId;

  factory CitiesRequest.fromJson(Map<String, dynamic> json) => CitiesRequest(
    branchId: json["branchId"],
  );

  Map<String, dynamic> toJson() => {
    "branchId": branchId,
  };
}