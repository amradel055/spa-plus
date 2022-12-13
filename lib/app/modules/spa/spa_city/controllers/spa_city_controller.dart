import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/spa_city_request_dto.dart';
import 'package:easy_hotel/app/data/model/spa/dto/response/spa_city_response_dto.dart';
import 'package:easy_hotel/app/data/repository/spa/spa_repository.dart';
import 'package:get/get.dart';

class SpaCityController extends GetxController {
  final spaCityGroup = <SpaCityResponse>[].obs;
  final isLoading = false.obs;
  final int id = Get.arguments;


  @override
  void onInit() {
    super.onInit();
    getSpaCity();


  }

  getSpaCity() async {
    isLoading(true);
    final request = SpaCityRequest(
       cityId: id,

    );
    SpaRepository().getSpaCity(request,
        onSuccess: (data) {
          spaCityGroup.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}

