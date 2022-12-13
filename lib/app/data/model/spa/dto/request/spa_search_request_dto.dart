class SpaSearchRequest {
  SpaSearchRequest({
    required this.name,
  });

  String name;

  factory SpaSearchRequest.fromJson(Map<String, dynamic> json) => SpaSearchRequest(
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };
}