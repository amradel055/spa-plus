import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/spa_search_request_dto.dart';
import 'package:easy_hotel/app/data/model/spa/dto/response/spa_search_response_dto.dart';
import 'package:easy_hotel/app/data/repository/rooms/rooms_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RoomSearchPageController extends GetxController {

  RxInt selectedType = 0.obs;
  SpaSearchResponse? search ;
  final isLoading = false.obs;
  final items = <BranchsearchModel>[].obs;
  final hotels = <HotelsearchModel>[].obs;
  final rooms = <SpasearchModel>[].obs;

  var textSearch = TextEditingController().obs;


  @override
  void onInit() {
    super.onInit();
    getRoomSearch();


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
      rooms.assignAll(search!.roomseList!);
    }

  }

  getRoomSearch() async {
    isLoading(true);
    final request = SpaSearchRequest(
      name:textSearch.value.text ,

    );
    RoomsRepository().getRoomsSearch(request,
        onSuccess: (data) {
          search=data.data;
          changeListType(selectedType.value);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
