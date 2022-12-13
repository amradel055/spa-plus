class SpaDetailRequest {
  SpaDetailRequest({
    required this.id,
  });

  int id;

  factory SpaDetailRequest.fromJson( dynamic json) => SpaDetailRequest(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}