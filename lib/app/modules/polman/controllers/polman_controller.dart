import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/data/model/polman/dto/request/polman_save_request.dart';
import 'package:easy_hotel/app/data/repository/polman/polman_repository.dart';
import 'package:get/get.dart';

class PolmanController extends GetxController {
  final isLoading = false.obs;
  Rx<DateTime> dateTime =DateTime.now().obs;


  getpolmanSave() async {
    isLoading(true);
    final request = PolmanSaveRequest(
      serviceTypeId:22 ,
      branchId: 232,
      createdBy:AppConstants.createdBy,
      companyId: AppConstants.companyId,
      customerId: UserManager().user!.id,
      time: dateTime.value
    );
    PolmanRepository().getPolmanSave(request,
        onSuccess: (data) {
          showPopupText( "تم الحفظ بنجاح");
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
}
