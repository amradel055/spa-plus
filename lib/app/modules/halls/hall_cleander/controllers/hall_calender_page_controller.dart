import 'package:get/get.dart';

import '../../../../core/utils/show_popup_text.dart';
import '../../../../core/utils/user_manager.dart';
import '../../../../core/values/app_constants.dart';
import '../../../../data/model/spa/dto/request/spa_save_request.dart';
import '../../../../data/repository/spa/spa_repository.dart';

class HallCalenderPageController extends GetxController {
  final isLoading = false.obs;

  getHallSave() async {
    isLoading(true);
    final request = SpaSaveRequest(
      // spaId:spa!.id! ,
      // spaItemDTOList: servicesSelected,
      salesDetailSpaItemDTOList: [],
      companyId: AppConstants.companyId,
      createdBy: AppConstants.createdBy,
      customerId: UserManager().user!.id,
      branchId: UserManager().selectedBranch!.id,
    );
    SpaRepository().getSpaSave(request,
        onSuccess: (data) {
          showPopupText( "تم الحفظ بنجاح");
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
}
