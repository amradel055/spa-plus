

class CarsTrafficLinesRequest {


  int branchId ;

  CarsTrafficLinesRequest({required this.branchId});

  Map<String , dynamic> toJson() => {
    "branchId" : branchId
  };
}