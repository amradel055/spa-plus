import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/all_spa_request_dto.dart';
import 'package:easy_hotel/app/data/model/spa/dto/response/spa_response_dto.dart';
import 'package:easy_hotel/app/data/repository/spa/spa_repository.dart';
import 'package:get/get.dart';

class SpaController extends GetxController {
  final spaGroup = <SpaResponse>[].obs;
  final spaOffer = <SpaResponse>[].obs;
  final isLoading = false.obs;
  final isOfferLoading = false.obs;


  @override
  void onInit() {
    super.onInit();
    getSpaGroup();
    getSpaOffer();


  }

  getSpaGroup() async {
    isLoading(true);
    final request = AllSpaRequest(
      appId: 4,

    );
    SpaRepository().getSpaGroup(request,
        onSuccess: (data) {
          spaGroup.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
  getSpaOffer() async {
    isOfferLoading(true);
    final request = AllSpaRequest(
      appId: 4,

    );
    SpaRepository().getSpaOffer(request,
        onSuccess: (data) {
          spaOffer.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isOfferLoading(false)
    );
  }

}
