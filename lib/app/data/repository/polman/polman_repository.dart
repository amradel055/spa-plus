
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/all_housekeeping_request_dto.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/housekeeping_detail_request_dto.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/housekeeping_save_request.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/response/housekeeping_detail_response.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/response/housekeeping_groups_response.dart';
import 'package:easy_hotel/app/data/model/polman/dto/request/polman_save_request.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class PolmanRepository {


  getPolmanSave(
      PolmanSaveRequest polmanSaveRequest, {
        SuccessFunc<void> onSuccess,
        Function(dynamic error)? onError,  Function()?onComplete,
      }) {
    ApiProvider().post<void>(
        'bollman/save',
        onSuccess: onSuccess,
        data: polmanSaveRequest.toJson(),
        onError: onError,
        convertor: (_){return null;},
        onComplete: onComplete
    );
  }


}
