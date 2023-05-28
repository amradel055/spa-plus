import 'package:easy_hotel/app/data/model/base_request.dart';

class ActiveOrdersRequestDto extends BaseRequest {
  ActiveOrdersRequestDto({
    this.branchId,
    this.spaId,
  });

  int? branchId;
  int? spaId;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
    "spaId": spaId,
  };
}
