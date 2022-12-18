class HallSearchFilterRequest {
  HallSearchFilterRequest({
     this.cityId,
     this.hotelId,
     this.addtionsModel
  });

  int ?cityId;
  int ?hotelId;
  List<AddtionsModel> ?addtionsModel;

  factory HallSearchFilterRequest.fromJson(Map<String, dynamic> json) => HallSearchFilterRequest(
    cityId: json["cityId"] == null ? null : json["cityId"],
    hotelId: json["hotelId"] == null ? null : json["hotelId"],
    addtionsModel: List<AddtionsModel>.from((json["addtionsModel"]??[]).map((x) => AddtionsModel.fromJson(x))),

  );

  Map<String, dynamic> toJson() => {

    "cityId": cityId == null ? null : cityId,
    "hotelId": hotelId == null ? null : hotelId,
    "addtionsModel": List<AddtionsModel>.from(addtionsModel!.map((x) => x)),


  };
}


class AddtionsModel {
  AddtionsModel({
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
    this.serial,
    this.appId,
    this.appName,
    this.itemId,
    this.hallId,
    this.discount,
    this.discountType,
    this.salePrice,
    this.additionsGroupId,
    this.additionsGroupName,
    this.mainAdditionId,
  });

  int? id;
  bool ?markEdit;
  dynamic msg;
  dynamic msgType;
  dynamic markDisable;
  dynamic createdBy;
  dynamic createdDate;
  dynamic index;
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
  dynamic serial;
  dynamic appId;
  dynamic appName;
  dynamic itemId;
  dynamic hallId;
  num ?discount;
  dynamic discountType;
  int ?salePrice;
  dynamic additionsGroupId;
  String? additionsGroupName;
  dynamic mainAdditionId;

  factory AddtionsModel.fromJson(Map<String, dynamic> json) => AddtionsModel(
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
    serial: json["serial"],
    appId: json["appId"],
    appName: json["appName"],
    itemId: json["itemId"],
    hallId: json["hallId"],
    discount: json["discount"],
    discountType: json["discountType"],
    salePrice: json["salePrice"],
    additionsGroupId: json["additionsGroupId"],
    additionsGroupName: json["additionsGroupName"],
    mainAdditionId: json["mainAdditionId"],
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
    "serial": serial,
    "appId": appId,
    "appName": appName,
    "itemId": itemId,
    "hallId": hallId,
    "discount": discount,
    "discountType": discountType,
    "salePrice": salePrice,
    "additionsGroupId": additionsGroupId,
    "additionsGroupName": additionsGroupName,
    "mainAdditionId": mainAdditionId,
  };
}

