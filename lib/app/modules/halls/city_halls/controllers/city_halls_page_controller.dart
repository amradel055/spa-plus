import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/all_additions_halls__request_dto.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/halls_search_filter_request.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_response.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_search_filter_response.dart';
import 'package:easy_hotel/app/data/repository/halls/halls_repository.dart';
import 'package:get/get.dart';

class CityHallsPageController extends GetxController {

  final hallsCity = <HallsSearchFilterResponse>[].obs;
  final isLoading = false.obs;
  final int id = Get.arguments;
  final selectedAdd = <AddtionsModel>[].obs;
  final allAdditions = <AdditionsGroupModel>[].obs;



  @override
  void onInit() {
    super.onInit();
    getHallsCity();
    getAllAdditions();


  }

  getHallsCity() async {
    isLoading(true);
    final request = HallSearchFilterRequest(
      hotelId: null,
      cityId: id,
      addtionsModel: selectedAdd.value

    );
    HallsRepository().getSearchFilterHalls(request,
        onSuccess: (data) {
          hallsCity.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
  getAllAdditions() async {
    isLoading(true);
    final request = AllAdditionsHallsRequest(
      appId: 6,

    );
    HallsRepository().getAllAdditionsHalls(request,
        onSuccess: (data) {
          allAdditions.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
