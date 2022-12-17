import 'dart:convert';

class HallsSearchResponse {
  HallsSearchResponse({
    this.branchList,
    this.citieseList,
    this.holesList,
    this.name,
  });

  List<HotelsearchModel>? branchList;
  List<BranchsearchModel>? citieseList;
  List<HallsSearchModel> ?holesList;
  dynamic  name;

  factory HallsSearchResponse.fromRawJson(String str) => HallsSearchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HallsSearchResponse.fromJson( dynamic json) => HallsSearchResponse(
    branchList: json["branchList"] == null ? null : List<HotelsearchModel>.from(json["branchList"].map((x) => HotelsearchModel.fromJson(x))),
    citieseList: json["citieseList"] == null ? null : List<BranchsearchModel>.from(json["citieseList"].map((x) => BranchsearchModel.fromJson(x))),
    holesList: json["holesList"] == null ? null : List<HallsSearchModel>.from(json["holesList"].map((x) => BranchsearchModel.fromJson(x))),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "branchList": branchList == null ? null : List<HotelsearchModel>.from(branchList!.map((x) => x.toJson())),
    "citieseList": citieseList == null ? null : List<BranchsearchModel>.from(citieseList!.map((x) => x.toJson())),
    "holesList": holesList == null ? null : List<HallsSearchModel>.from(holesList!.map((x) => x.toJson())),
    "name": name,
  };
}



class BranchsearchModel {
  BranchsearchModel({
    this.id,
    this.name,
    this.image,

  });

  int ?id;
  String? name;
  String ?image;

  factory BranchsearchModel.fromRawJson(String str) => BranchsearchModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BranchsearchModel.fromJson(Map<String, dynamic> json) => BranchsearchModel(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    image: json["image"] == null ? null : json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "image": image == null ? null : image,
  };
}
class HotelsearchModel {
  HotelsearchModel({
    this.id,
    this.name,
    this.image,
    this.cityName,

  });

  int ?id;
  String? name;
  String ?image;
  String ?cityName;


  String toRawJson() => json.encode(toJson());

  factory HotelsearchModel.fromJson(Map<String, dynamic> json) => HotelsearchModel(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    image: json["image"] == null ? null : json["image"],
    cityName: json["cityName"] == null ? null : json["cityName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "image": image == null ? null : image,
    "cityName": cityName == null ? null : cityName,
  };
}
class HallsSearchModel {
  HallsSearchModel({
    this.id,
    this.name,
    this.image,
    this.hotelName,

  });

  int ?id;
  String? name;
  String ?image;
  String ?hotelName;


  String toRawJson() => json.encode(toJson());

  factory HallsSearchModel.fromJson(Map<String, dynamic> json) => HallsSearchModel(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    image: json["image"] == null ? null : json["image"],
    hotelName: json["hotelName"] == null ? null : json["hotelName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "image": image == null ? null : image,
    "hotelName": hotelName == null ? null : hotelName,
  };
}