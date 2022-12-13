// To parse this JSON data, do
//
//     final salesDetailsSpa = salesDetailsSpaFromJson(jsonString);

import 'dart:convert';

import 'package:easy_hotel/app/data/model/spa/dto/request/spa_save_request.dart';




class HousekeepingSaveRequest {
  HousekeepingSaveRequest({
    this.serviceTypeId,
    this.branchId,
    this.createdBy,
    this.companyId,
    this.salesDetailHouseKeppingItemDTOList,
    this.customerId,
  });

  int? serviceTypeId;
  int? branchId;
  int?createdBy;
  int?companyId;
  List<int>? salesDetailHouseKeppingItemDTOList ;
  int? customerId ;

  factory HousekeepingSaveRequest.fromJson( dynamic json) => HousekeepingSaveRequest(
      serviceTypeId: json["serviceTypeId"] == null ? null : json["serviceTypeId"],
      customerId: json["customerId"] == null ? null : json["customerId"],
      createdBy: json["createdBy"] == null ? null : json["createdBy"],
      companyId: json["companyId"] == null ? null : json["companyId"],
      branchId: json["branchId"] == null ? null : json["branchId"],
      salesDetailHouseKeppingItemDTOList : json["salesDetailHouseKeppingItemDTOList"] == null ? null : List<int>.from(json["salesDetailHouseKeppingItemDTOList"].map((e) => SalesDetailsSpaItem.fromJson(e)))
  );

  Map<String, dynamic> toJson() => {
    "serviceTypeId": serviceTypeId == null ? null : serviceTypeId,
    "customerId": customerId == null ? null : customerId,
    "createdBy": createdBy == null ? null : createdBy,
    "companyId": companyId == null ? null : companyId,
    "branchId": branchId == null ? null : branchId,
    // "salesDetailHouseKeppingItemDTOList" : salesDetailHouseKeppingItemDTOList == null ? null : List<dynamic>.from(salesDetailHouseKeppingItemDTOList!.map((x) => x.toJson()))
  };
}
