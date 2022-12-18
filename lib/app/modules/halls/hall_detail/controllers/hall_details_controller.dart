import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/halls_detail_request_dto.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/hall_detail_response.dart';
import 'package:easy_hotel/app/data/repository/halls/halls_repository.dart';
import 'package:get/get.dart';

class HallDetailsController extends GetxController {

  final int id = Get.arguments;
  final isLoading = false.obs;
  HallsDetailResponse? hall ;
  final servicesSelected = <int>[].obs;



  @override
  void onInit() {
    super.onInit();
    getHallDetail();


  }


  getHallDetail() async {
    isLoading(true);
    final request = HallDetailRequest(
      id:id ,
    );
    HallsRepository().getHallDetail(request,
        onSuccess: (data) {
          hall=data.data;

        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
