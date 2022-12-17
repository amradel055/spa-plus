import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/housekeeping_save_request.dart';
import 'package:easy_hotel/app/data/repository/housekeeping/housekeeping_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class HouseKeepingReservationController extends GetxController {
  final isLoading = false.obs;
  // final servicesSelected = <int>[].obs;
  final int id = Get.arguments;
  // final int branchId = Get.arguments;
   Rx<DateTime> dateTime =DateTime.now().obs;
  final Rxn<DateTime> dateTo = Rxn();


  getHousekeepingSave() async {
    isLoading(true);
    final request = HousekeepingSaveRequest(
      serviceTypeId:id ,
      branchId: 232,
      createdBy:AppConstants.createdBy,
      companyId: AppConstants.companyId,
      customerId: UserManager().user!.id,
        salesDetailHouseKeepingDTOList: [2],
      date: dateTo.value,
      time: dateTime.value
    );
    HousekeepingRepository().getHousekeepingSave(request,
        onSuccess: (data) {
          showPopupText( "تم الحفظ بنجاح");
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
  pickToDate() async {
    dateTo(await _pickDate(initialDate: dateTo.value ?? DateTime.now(), firstDate: dateTo.value ?? DateTime.now(), lastDate:  DateTime.utc(2030, 3, 14)));
  }
  _pickDate({required DateTime initialDate, required DateTime firstDate, required DateTime lastDate}) {
    return showDatePicker(context: Get.overlayContext!, initialDate: initialDate, firstDate: firstDate, lastDate: lastDate);
  }
}
