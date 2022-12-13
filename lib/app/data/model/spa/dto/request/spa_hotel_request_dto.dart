class SpaHotelRequest {
  SpaHotelRequest({
    required this.hotelId,
  });

  int hotelId;

  factory SpaHotelRequest.fromJson( dynamic json) => SpaHotelRequest(
    hotelId: json["hotelId"],
  );

  Map<String, dynamic> toJson() => {
    "hotelId": hotelId,
  };
}