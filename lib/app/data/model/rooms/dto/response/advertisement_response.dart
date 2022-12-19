// To parse this JSON data, do
//
//     final advertisementModel = advertisementModelFromJson(jsonString);

import 'dart:convert';

class AdvertisementResponse {
  AdvertisementResponse({
    this.id,
    this.markEdit,
    this.msg,
    this.msgType,
    this.markDisable,
    this.createdBy,
    this.createdDate,
    this.index,
    this.companyId,
    this.createdByName,
    this.branchId,
    this.deletedBy,
    this.deletedDate,
    this.igmaOwnerId,
    this.companyCode,
    this.branchSerial,
    this.igmaOwnerSerial,
    this.userCode,
    this.name,
    this.imgUrl,
    this.appId,
    this.pageNumber,
    this.positionNumber,
    this.title,
    this.itemType,
    this.itemId,
    this.pageName,
    this.appName,
    this.sliderPosition,
    this.hotelName,
    this.typeName,
    this.dateTo,
    this.dateFrom,
  });

  int? id;
  bool? markEdit;
  dynamic? msg;
  dynamic ?msgType;
  dynamic ?markDisable;
  int ?createdBy;
  String? createdDate;
  int ?index;
  dynamic? companyId;
  dynamic ?createdByName;
  dynamic ?branchId;
  dynamic ?deletedBy;
  dynamic ?deletedDate;
  dynamic? igmaOwnerId;
  dynamic ?companyCode;
  dynamic ?branchSerial;
  dynamic ?igmaOwnerSerial;
  dynamic ?userCode;
  String ?name;
  dynamic ?imgUrl;
  int ?appId;
  dynamic? pageNumber;
  dynamic? positionNumber;
  dynamic ?title;
  int ?itemType;
  int ?itemId;
  dynamic? pageName;
  String ?appName;
  dynamic? sliderPosition;
  String ?hotelName;
  String ?typeName;
  String ?dateTo;
  String ?dateFrom;

  static List<AdvertisementResponse> fromList(dynamic json) => List.from(json.map((e) => AdvertisementResponse.fromJson(e)));

  factory AdvertisementResponse.fromRawJson(String str) => AdvertisementResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdvertisementResponse.fromJson(Map<String, dynamic> json) => AdvertisementResponse(
    id: json["id"] == null ? null : json["id"],
    markEdit: json["markEdit"] == null ? null : json["markEdit"],
    msg: json["msg"],
    msgType: json["msgType"],
    markDisable: json["markDisable"],
    createdBy: json["createdBy"] == null ? null : json["createdBy"],
    createdDate: json["createdDate"] == null ? null : json["createdDate"],
    index: json["index"] == null ? null : json["index"],
    companyId: json["companyId"],
    createdByName: json["createdByName"],
    branchId: json["branchId"],
    deletedBy: json["deletedBy"],
    deletedDate: json["deletedDate"],
    igmaOwnerId: json["igmaOwnerId"],
    companyCode: json["companyCode"],
    branchSerial: json["branchSerial"],
    igmaOwnerSerial: json["igmaOwnerSerial"],
    userCode: json["userCode"],
    name: json["name"] == null ? null : json["name"],
    imgUrl: json["imgUrl"],
    appId: json["appId"] == null ? null : json["appId"],
    pageNumber: json["pageNumber"],
    positionNumber: json["positionNumber"],
    title: json["title"],
    itemType: json["itemType"] == null ? null : json["itemType"],
    itemId: json["itemId"] == null ? null : json["itemId"],
    pageName: json["pageName"],
    appName: json["appName"] == null ? null : json["appName"],
    sliderPosition: json["sliderPosition"],
    hotelName: json["hotelName"] == null ? null : json["hotelName"],
    typeName: json["typeName"] == null ? null : json["typeName"],
    dateTo: json["dateTo"] == null ? null : json["dateTo"],
    dateFrom: json["dateFrom"] == null ? null : json["dateFrom"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "markEdit": markEdit == null ? null : markEdit,
    "msg": msg,
    "msgType": msgType,
    "markDisable": markDisable,
    "createdBy": createdBy == null ? null : createdBy,
    "createdDate": createdDate == null ? null : createdDate,
    "index": index == null ? null : index,
    "companyId": companyId,
    "createdByName": createdByName,
    "branchId": branchId,
    "deletedBy": deletedBy,
    "deletedDate": deletedDate,
    "igmaOwnerId": igmaOwnerId,
    "companyCode": companyCode,
    "branchSerial": branchSerial,
    "igmaOwnerSerial": igmaOwnerSerial,
    "userCode": userCode,
    "name": name == null ? null : name,
    "imgUrl": imgUrl,
    "appId": appId == null ? null : appId,
    "pageNumber": pageNumber,
    "positionNumber": positionNumber,
    "title": title,
    "itemType": itemType == null ? null : itemType,
    "itemId": itemId == null ? null : itemId,
    "pageName": pageName,
    "appName": appName == null ? null : appName,
    "sliderPosition": sliderPosition,
    "hotelName": hotelName == null ? null : hotelName,
    "typeName": typeName == null ? null : typeName,
    "dateTo": dateTo == null ? null : dateTo,
    "dateFrom": dateFrom == null ? null : dateFrom,
  };
}
