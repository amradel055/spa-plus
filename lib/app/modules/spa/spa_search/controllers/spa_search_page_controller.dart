import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/spa/dto/request/spa_search_request_dto.dart';
import 'package:easy_hotel/app/data/model/spa/dto/response/spa_search_response_dto.dart';
import 'package:easy_hotel/app/data/repository/spa/spa_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpaSearchPageController extends GetxController {
  RxInt selectedType = 0.obs;
  SpaSearchResponse? search ;
  final isLoading = false.obs;
  final items = <BranchsearchModel>[].obs;
  final hotels = <HotelsearchModel>[].obs;
  final spas = <SpasearchModel>[].obs;

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
      spas.assignAll(search!.spaList!);
    }

  }

  getSpaSearch() async {
    isLoading(true);
    final request = SpaSearchRequest(
      name:textSearch.value.text ,

    );
    SpaRepository().getSpaSearch(request,
        onSuccess: (data) {
          search=data.data;
          changeListType(selectedType.value);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
