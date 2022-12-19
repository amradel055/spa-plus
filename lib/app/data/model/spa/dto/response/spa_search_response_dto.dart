import 'dart:convert';

class SpaSearchResponse {
  SpaSearchResponse({
    this.branchList,
    this.citieseList,
    this.roomseList,
    this.holesList,
    this.spaList,
    this.name,
  });

  List<HotelsearchModel>? branchList;
  List<BranchsearchModel>? citieseList;
  List<BranchsearchModel>? roomseList;
  List<BranchsearchModel>? holesList;
  List<SpasearchModel>? spaList;
  dynamic  name;

  factory SpaSearchResponse.fromRawJson(String str) => SpaSearchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SpaSearchResponse.fromJson( dynamic json) => SpaSearchResponse(
    branchList: json["branchList"] == null ? null : List<HotelsearchModel>.from(json["branchList"].map((x) => HotelsearchModel.fromJson(x))),
    citieseList: json["citieseList"] == null ? null : List<BranchsearchModel>.from(json["citieseList"].map((x) => BranchsearchModel.fromJson(x))),
    roomseList: json["roomseList"] == null ? null : List<BranchsearchModel>.from(json["roomseList"].map((x) => BranchsearchModel.fromJson(x))),
    holesList: json["holesList"] == null ? null : List<BranchsearchModel>.from(json["holesList"].map((x) => BranchsearchModel.fromJson(x))),
    spaList: json["spaList"] == null ? null : List<SpasearchModel>.from(json["spaList"].map((x) => SpasearchModel.fromJson(x))),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "branchList": branchList == null ? null : List<HotelsearchModel>.from(branchList!.map((x) => x.toJson())),
    "citieseList": citieseList == null ? null : List<BranchsearchModel>.from(citieseList!.map((x) => x.toJson())),
    "roomseList": roomseList == null ? null : List<BranchsearchModel>.from(roomseList!.map((x) => x.toJson())),
    "holesList": holesList == null ? null : List<BranchsearchModel>.from(holesList!.map((x) => x.toJson())),
    "spaList": spaList == null ? null : List<SpasearchModel>.from(spaList!.map((x) => x.toJson())),
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
class SpasearchModel {
  SpasearchModel({
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

  factory SpasearchModel.fromJson(Map<String, dynamic> json) => SpasearchModel(
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