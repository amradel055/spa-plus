// To parse this JSON data, do
//
//     final spaitemsModel = spaitemsModelFromJson(jsonString);

import 'dart:convert';


class SpaCityResponse {
  SpaCityResponse({
    this.id,
    this.name,
    this.image,
    this.cityName,
    this.cityId,
    this.hotelId,
    this.hotelName,
  });

  int? id;
  String? name;
  dynamic image;
  String? cityName;
  dynamic cityId;
  dynamic hotelId;
  String ?hotelName;
  static List<SpaCityResponse> fromList(dynamic json) => List.from(json.map((e) => SpaCityResponse.fromJson(e)));


  factory SpaCityResponse.fromJson( dynamic json) => SpaCityResponse(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    cityName: json["cityName"],
    cityId: json["cityId"],
    hotelId: json["hotelId"],
    hotelName: json["hotelName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "cityName": cityName,
    "cityId": cityId,
    "hotelId": hotelId,
    "hotelName": hotelName,
  };
}
