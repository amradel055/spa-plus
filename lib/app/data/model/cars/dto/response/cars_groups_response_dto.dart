


class CarsGroupsResponse {
  CarsGroupsResponse({
  this.id , this.serial , this.name , this.groupType , this.parent
});
  int? id;
  int? serial;
  String? name;
  int? parent;
  int? groupType;

  static List<CarsGroupsResponse> fromList(dynamic json) => List.from(json.map((e) => CarsGroupsResponse.fromJson(e)));

  factory CarsGroupsResponse.fromJson(Map<String , dynamic> json) => CarsGroupsResponse(
    id : json['id'] != null ? json['id'] : null ,
    name : json['name'] != null ? json['name'] : null ,
    serial : json['serial'] != null ? json['serial'] : null ,
    parent : json['parent'] != null ? json['parent'] : null ,
    groupType : json['groupType'] != null ? json['groupType'] : null ,
  );
}