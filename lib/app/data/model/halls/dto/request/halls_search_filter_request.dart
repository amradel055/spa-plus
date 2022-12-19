import 'package:easy_hotel/app/data/model/halls/dto/response/halls_response.dart';

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
    // "addtionsModel": List<AddtionsModel>.from(addtionsModel!.map((x) => x)),
    "addtionsModel" : addtionsModel == null ? null : List<dynamic>.from(addtionsModel!.map((x) => x.toJson()))


  };
}



