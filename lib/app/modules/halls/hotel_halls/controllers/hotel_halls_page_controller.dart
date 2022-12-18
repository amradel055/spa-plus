import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/halls_search_filter_request.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_search_filter_response.dart';
import 'package:easy_hotel/app/data/repository/halls/halls_repository.dart';
import 'package:get/get.dart';

class HotelHallsPageController extends GetxController {

  final hallsHotel = <HallsSearchFilterResponse>[].obs;
  final isLoading = false.obs;
  final int id = Get.arguments;



  @override
  void onInit() {
    super.onInit();
    getHallsHotel();


  }

  getHallsHotel() async {
    isLoading(true);
    final request = HallSearchFilterRequest(
        hotelId: id,
        cityId: null,
        addtionsModel: []

    );
    HallsRepository().getSearchFilterHalls(request,
        onSuccess: (data) {
          hallsHotel.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }


}
