import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/spa_hotel_request_dto.dart';
import 'package:easy_hotel/app/data/model/spa/dto/response/spa_city_response_dto.dart';
import 'package:easy_hotel/app/data/repository/spa/spa_repository.dart';
import 'package:get/get.dart';

class SpaHotelController extends GetxController {
  final spaHotelGroup = <SpaCityResponse>[].obs;
  final int id = Get.arguments;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getSpaHotel();


  }

  getSpaHotel() async {
    isLoading(true);
    final request = SpaHotelRequest(
       hotelId:id,

    );
    SpaRepository().getSpaHotel(request,
        onSuccess: (data) {
          spaHotelGroup.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
