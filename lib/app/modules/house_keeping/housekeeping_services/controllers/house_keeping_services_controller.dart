import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/request/housekeeping_detail_request_dto.dart';
import 'package:easy_hotel/app/data/model/housekeeping/dto/response/housekeeping_detail_response.dart';
import 'package:easy_hotel/app/data/repository/housekeeping/housekeeping_repository.dart';
import 'package:get/get.dart';

class HouseKeepingServicesController extends GetxController {
  var housekeepingDetail = <HouseKeepingDetailResponse>[].obs;
  final isLoading = false.obs;
  final servicesSelected = <int>[].obs;
  final int id = Get.arguments;
  final int branchId = Get.arguments;
  final int index = Get.arguments;



  @override
  void onInit() {
    super.onInit();
    getHousekeepingGroup();


  }

  getHousekeepingGroup() async {
    isLoading(true);
    final request = HousekeepingDetailRequest(
      groupId: id,

    );
    HousekeepingRepository().getHousekeepingDetail(request,
        onSuccess: (data) {
          housekeepingDetail.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
