import 'package:easy_hotel/app/core/transitions/size_transitions.dart';

class RegisterResponse {
  RegisterResponse({

    required this.success,
    required this.data,
    required this.msg,
    required this.code,
    required this.pagination,

  });

  final bool success;
  final dynamic data;
  final String code;
  final String msg;
  final dynamic pagination;

  factory RegisterResponse.fromJson(json) => RegisterResponse(
    success: json["success"],
    data: json["data"],
    msg: json["msg"],
    code: json["code"],
    pagination: json["pagination"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data,
    "msg": msg,
    "code": code,
    "pagination": pagination,
  };
}
