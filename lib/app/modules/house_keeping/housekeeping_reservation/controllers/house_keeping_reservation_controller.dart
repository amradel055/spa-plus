import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/housekeeping_save_request.dart';
import 'package:easy_hotel/app/data/repository/housekeeping/housekeeping_repository.dart';
import 'package:get/get.dart';

class HouseKeepingReservationController extends GetxController {
  final isLoading = false.obs;
  // final servicesSelected = <int>[].obs;
  final int id = Get.arguments;
  // final int branchId = Get.arguments;

  getHousekeepingSave() async {
    isLoading(true);
    final request = HousekeepingSaveRequest(
      serviceTypeId:id ,
      branchId: UserManager().user!.branchId,
      createdBy:AppConstants.createdBy,
      companyId: AppConstants.companyId,
      customerId: UserManager().user!.id,
      salesDetailHouseKeppingItemDTOList: [],
    );
    HousekeepingRepository().getHousekeepingSave(request,
        onSuccess: (data) {
          showPopupText( "تم الحفظ بنجاح");
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
