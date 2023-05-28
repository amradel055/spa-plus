// To parse this JSON data, do
//
//     final polmanOrder = polmanOrderFromJson(jsonString);

import 'dart:convert';

PolmanOrder polmanOrderFromJson(String str) => PolmanOrder.fromJson(json.decode(str));

String polmanOrderToJson(PolmanOrder data) => json.encode(data.toJson());

class PolmanOrder {
  PolmanOrder({
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
    this.spaId,
    this.spaItemId,
    this.spaItemName,
    this.spaItemImage,
    // this.spaItemsDtoList,
    this.offerId,
    this.price,
    this.discountValue,
    this.discountType,
    this.discountRate,
    this.salePrice,
    this.name,
    this.email,
    this.customerId,
    this.phone,
    this.address,
    this.finishName,
    this.finishBy,
    this.finishDate,
    // this.reviewSpaDto,
    this.dateClose,
    this.dueDate,
    this.dueTime,
    // this.salesDetailSpaItemDtoList,
    // this.addtionsDtoList,
    this.startDate,
    this.remark,
  });

  int? id;
  bool? markEdit;
  dynamic msg;
  dynamic msgType;
  dynamic markDisable;
  int? createdBy;
  String? createdDate;
  int? index;
  int? companyId;
  dynamic createdByName;
  dynamic branchId;
  dynamic deletedBy;
  dynamic deletedDate;
  dynamic igmaOwnerId;
  dynamic companyCode;
  dynamic branchSerial;
  dynamic igmaOwnerSerial;
  dynamic userCode;
  int? spaId;
  int? spaItemId;
  String? spaItemName;
  String? spaItemImage;
  // List<dynamic>? spaItemsDtoList;
  dynamic offerId;
  double? price;
  double? discountValue;
  int? discountType;
  double? discountRate;
  double? salePrice;
  String? name;
  String? email;
  int? customerId;
  String? phone;
  String? remark;
  dynamic address;
  dynamic finishName;
  dynamic finishBy;
  DateTime? finishDate;
  // Map<String, bool?>? reviewSpaDto;
  dynamic dateClose;
  DateTime? dueDate;
  DateTime? dueTime;
  // List<dynamic>? salesDetailSpaItemDtoList;
  // List<dynamic>? addtionsDtoList;
  DateTime? startDate;

  static List<PolmanOrder> fromList(dynamic json) => List.from(json.map((e) => PolmanOrder.fromJson(e)));


  factory PolmanOrder.fromJson(Map<String, dynamic> json) => PolmanOrder(
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
    spaId: json["spaId"],
    spaItemId: json["spaItemId"],
    spaItemName: json["spaItemName"],
    spaItemImage: json["spaItemImage"],
    // spaItemsDtoList: json["spaItemsDTOList"] == null ? [] : List<dynamic>.from(json["spaItemsDTOList"]!.map((x) => x)),
    offerId: json["offerId"],
    price: json["price"].toDouble(),
    discountValue: json["discountValue"].toDouble(),
    discountType: json["discountType"],
    discountRate: json["discountRate"].toDouble(),
    salePrice: json["salePrice"].toDouble(),
    name: json["name"],
    email: json["email"],
    customerId: json["customerId"],
    phone: json["phone"],
    address: json["address"],
    remark: json["remark"],
    finishName: json["finishName"],
    finishBy: json["finishBy"],
    // reviewSpaDto: Map.from(json["reviewSpaDTO"]!).map((k, v) => MapEntry<String, bool?>(k, v)),
    dateClose: json["dateClose"] == null ? null : DateTime.parse(json["dateClose"]),
    dueDate: json["dueDate"] == null ? null : DateTime.parse(json["dueDate"]),
    dueTime: json["dueTime"] == null ? null : DateTime.parse(json["dueTime"]),
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    finishDate: json["finishDate"] == null ? null : DateTime.parse(json["finishDate"]),

    // salesDetailSpaItemDtoList: json["salesDetailSpaItemDTOList"] == null ? [] : List<dynamic>.from(json["salesDetailSpaItemDTOList"]!.map((x) => x)),
    // addtionsDtoList: json["addtionsDTOList"] == null ? [] : List<dynamic>.from(json["addtionsDTOList"]!.map((x) => x)),
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
    "remark": remark,
    "spaId": spaId,
    "spaItemId": spaItemId,
    "spaItemName": spaItemName,
    "spaItemImage": spaItemImage,
    // "spaItemsDTOList": spaItemsDtoList == null ? [] : List<dynamic>.from(spaItemsDtoList!.map((x) => x)),
    "offerId": offerId,
    "price": price,
    "discountValue": discountValue,
    "discountType": discountType,
    "discountRate": discountRate,
    "salePrice": salePrice,
    "name": name,
    "email": email,
    "customerId": customerId,
    "phone": phone,
    "address": address,
    "finishName": finishName,
    "finishBy": finishBy,
    "finishDate": finishDate,
    // "reviewSpaDTO": Map.from(reviewSpaDto!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "dateClose": dateClose,
    "dueDate": dueDate!.toIso8601String(),
    "dueTime": dueTime!.toIso8601String(),
    // "salesDetailSpaItemDTOList": salesDetailSpaItemDtoList == null ? [] : List<dynamic>.from(salesDetailSpaItemDtoList!.map((x) => x)),
    // "addtionsDTOList": addtionsDtoList == null ? [] : List<dynamic>.from(addtionsDtoList!.map((x) => x)),
    "startDate": startDate,
  };
}
