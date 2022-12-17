

class CarsOrderResponse {
  CarsOrderResponse({this.msg});
  String? msg ;


  factory CarsOrderResponse.fromJson(Map<String , dynamic> json) => CarsOrderResponse(
    msg: json['msg']
  );

}