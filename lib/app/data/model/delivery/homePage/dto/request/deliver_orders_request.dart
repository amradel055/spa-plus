import 'package:easy_hotel/app/data/model/base_request.dart';

class DeliverOrdersRequestDto extends BaseRequest {
  DeliverOrdersRequestDto({
    this.branchId,
    this.finishBy,
  });

  int? branchId;
  int? finishBy;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
    "finishBy": finishBy,
  };
}
