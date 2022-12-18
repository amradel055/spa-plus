// To parse this JSON data, do
//
//     final hallsModel = hallsModelFromJson(jsonString);


import 'package:easy_hotel/app/data/model/halls/dto/response/halls_response.dart';

class HallsDetailResponse {
  HallsDetailResponse({
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
    this.price,
    this.loyaltyPoints,
    this.capacity,
    this.appId,
    this.currencySerial,
    this.discountType,
    this.discountValue,
    this.discountRate,
    this.saleItem,
    this.offerId,
    this.occasionsDtoList,
    this.image,
    this.itemImages,
    this.additionsGroupDTOList,
    this.cityId,
    this.salePrice,
  });

  int ?id;
  bool ?markEdit;
  dynamic msg;
  dynamic msgType;
  dynamic markDisable;
  int ?createdBy;
  String? createdDate;
  int ?index;
  dynamic companyId;
  dynamic createdByName;
  dynamic branchId;
  dynamic deletedBy;
  dynamic deletedDate;
  dynamic igmaOwnerId;
  dynamic companyCode;
  dynamic branchSerial;
  dynamic igmaOwnerSerial;
  dynamic userCode;
  String? name;
  num ?price;
  num? loyaltyPoints;
  int ?capacity;
  dynamic appId;
  dynamic currencySerial;
  int ?discountType;
  num? discountValue;
  int ?discountRate;
  bool ?saleItem;
  dynamic offerId;
  dynamic occasionsDtoList;
  dynamic image;
  List<dynamic>? itemImages;
  List<AdditionsGroupModel> ?additionsGroupDTOList;
  dynamic cityId;
  int ?salePrice;

  factory HallsDetailResponse.fromJson( dynamic json) => HallsDetailResponse(
    id: json["id"],
    markEdit: json["markEdit"],
    msg: json["msg"],
    msgType: json["msgType"],
    markDisable: json["markDisable"],
    createdBy: json["createdBy"],
    createdDate: json["createdDate"],
    index: json["index"],
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
    name: json["name"],
    price: json["price"],
    loyaltyPoints: json["loyaltyPoints"],
    capacity: json["capacity"],
    appId: json["appId"],
    currencySerial: json["currencySerial"],
    discountType: json["discountType"],
    discountValue: json["discountValue"],
    discountRate: json["discountRate"],
    saleItem: json["saleItem"],
    offerId: json["offerId"],
    occasionsDtoList: json["occasionsDTOList"],
    image: json["image"],
    itemImages: List<dynamic>.from((json["itemImages"]??[]).map((x) => x)),
    additionsGroupDTOList: List<AdditionsGroupModel>.from((json["additionsGroupDTOList"]??[]).map((x) => AdditionsGroupModel.fromJson(x))),
    cityId: json["cityId"],
    salePrice: json["salePrice"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "markEdit": markEdit,
    "msg": msg,
    "msgType": msgType,
    "markDisable": markDisable,
    "createdBy": createdBy,
    "createdDate": createdDate,
    "index": index,
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
    "name": name,
    "price": price,
    "loyaltyPoints": loyaltyPoints,
    "capacity": capacity,
    "appId": appId,
    "currencySerial": currencySerial,
    "discountType": discountType,
    "discountValue": discountValue,
    "discountRate": discountRate,
    "saleItem": saleItem,
    "offerId": offerId,
    "occasionsDTOList": occasionsDtoList,
    "image": image,
    "itemImages": List<dynamic>.from(itemImages!.map((x) => x)),
    "additionsGroupDTOList": List<AdditionsGroupModel>.from(additionsGroupDTOList!.map((x) => x)),
    "cityId": cityId,
    "salePrice": salePrice,
  };
}
