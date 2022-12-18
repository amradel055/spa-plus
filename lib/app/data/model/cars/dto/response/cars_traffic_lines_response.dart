

class CarsTrafficLinesResponse {

  CarsTrafficLinesResponse({this.id, this.lineName, this.price, this.tripTypeName, this.tripType, this.personsNumber});

  int? id ;
  String? lineName;
  double? price;
  String? tripTypeName;
  int? tripType;
  int? personsNumber;


  static List<CarsTrafficLinesResponse> fromList(dynamic json) => List.from(json.map((e) => CarsTrafficLinesResponse.fromJson(e)));

  factory CarsTrafficLinesResponse.fromJson(Map<String , dynamic> json) => CarsTrafficLinesResponse(
    id: json['id'] != null ? json['id'] : null ,
    lineName: json['lineName'] != null ? json['lineName'] : null ,
    price: json['price'] != null ? json['price'] : null ,
    tripTypeName: json['tripTypeName'] != null ? json['tripTypeName'] : null ,
    tripType: json['tripType'] != null ? json['tripType'] : null ,
    personsNumber: json['personsNumber'] != null ? json['personsNumber'] : null ,
  );

}