import 'package:easy_hotel/app/data/model/halls/dto/request/halls_save_request.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/hall_detail_response.dart';
import 'package:easy_hotel/app/data/repository/halls/halls_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/utils/show_popup_text.dart';
import '../../../../core/utils/user_manager.dart';
import '../../../../core/values/app_constants.dart';
import '../../../../data/model/spa/dto/request/spa_save_request.dart';
import '../../../../data/repository/spa/spa_repository.dart';

class HallCalenderPageController extends GetxController {
  final isLoading = false.obs;

  // final HallsDetailResponse hall = Get.arguments;
  final List args = Get.arguments;



  getSpaSave() async {
      isLoading(true);
      final request = HallsSaveRequest(
        currencySerial: 1,
        hallId: args[0].id,
        addtionsDTOList: args[1],
        companyId: AppConstants.companyId,
        createdBy: AppConstants.createdBy,
        customerId: UserManager().user!.id,
        branchId: args[0].branchId,
      );
      HallsRepository().getHallSave(request,
          onSuccess: (data) {
            showPopupText("تم الحفظ بنجاح");
          },
          onError: (e) => showPopupText(e.toString()),
          onComplete: () => isLoading(false)
      );

  }}
