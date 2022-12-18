class HallDetailRequest {
  HallDetailRequest({
    required this.id,
  });

  int id;

  factory HallDetailRequest.fromJson(Map<String, dynamic> json) => HallDetailRequest(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}