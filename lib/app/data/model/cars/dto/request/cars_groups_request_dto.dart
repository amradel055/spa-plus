


class CarsGroupRequest {
  CarsGroupRequest({required this.appId , required this.branchId});
  int appId ;
  int branchId ;

  Map<String , dynamic> toJson ()  => {
    "appId" : appId,
    "branchId" : branchId
  };
}