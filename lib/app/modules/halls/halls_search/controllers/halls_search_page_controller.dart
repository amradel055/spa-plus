import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/halls_search_request_dto.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_search_response_dto.dart';
import 'package:easy_hotel/app/data/repository/halls/halls_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HallsSearchPageController extends GetxController {
  RxInt selectedType = 0.obs;
  HallsSearchResponse? search ;
  final isLoading = false.obs;
  final items = <BranchsearchModel>[].obs;
  final hotels = <HotelsearchModel>[].obs;
  final halls = <HallsSearchModel>[].obs;

  var textSearch = TextEditingController().obs;


  @override
  void onInit() {
    super.onInit();
    getSpaSearch();


  }

  changeListType(int newType){
    selectedType(newType);
    if(search == null) return;
    if(newType ==0){
      items.assignAll(search!.citieseList!);
    }
    if(newType ==1){
      hotels.assignAll(search!.branchList!);
    }
    if(newType ==2){
      halls.assignAll(search!.holesList!);
    }

  }

  getSpaSearch() async {
    isLoading(true);
    final request = HallsSearchRequest(
      name:textSearch.value.text ,

    );
    HallsRepository().getSearchHalls(request,
        onSuccess: (data) {
          search=data.data;
          changeListType(selectedType.value);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
}
