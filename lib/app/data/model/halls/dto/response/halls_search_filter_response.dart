// To parse this JSON data, do
//
//     final hallsSearchModel = hallsSearchModelFromJson(jsonString);


class HallsSearchFilterResponse {
  HallsSearchFilterResponse({
    this.id,
    this.hotelName,
    this.hallName,
    this.cityName,
    this.rate,
    this.price,
    this.image,
  });

  int? id;
  String? hotelName;
  String? hallName;
  String ?cityName;
  num? rate;
  num ?price;
  dynamic image;

  static List<HallsSearchFilterResponse> fromList(dynamic json) => List.from(json.map((e) => HallsSearchFilterResponse.fromJson(e)));

  factory HallsSearchFilterResponse.fromJson( dynamic json) => HallsSearchFilterResponse(
    id: json["id"],
    hotelName: json["hotelName"],
    hallName: json["hallName"],
    cityName: json["cityName"],
    rate: json["rate"],
    price: json["price"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "hotelName": hotelName,
    "hallName": hallName,
    "cityName": cityName,
    "rate": rate,
    "price": price,
    "image": image,
  };
}
