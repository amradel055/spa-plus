class HallsSearchRequest {
  HallsSearchRequest({
    required this.name,
  });

  String name;

  factory HallsSearchRequest.fromJson(Map<String, dynamic> json) => HallsSearchRequest(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}