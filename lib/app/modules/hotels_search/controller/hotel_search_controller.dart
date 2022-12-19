

import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/repository/hotel_search_for_services/hotel_search_for_services_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/halls/dto/response/halls_search_response_dto.dart';
import '../../../data/model/spa/dto/request/spa_search_request_dto.dart';

class HotelSearchController extends GetxController {

  final searchFocusNode = FocusNode().obs;
  final searchController = TextEditingController();
  final hotelsList = <HotelsearchModel>[].obs;

  requestFocus(){
    searchFocusNode.value.requestFocus();
  }

  searchHotelForServices(){
    if(searchController.text.tr.isEmpty){
      return ;
    }
    final request = SpaSearchRequest(name: searchController.text);
    HotelSearchForServicesRepository().searchHotelForServices(
        request,
       onSuccess: (data){
         hotelsList.assignAll(data.data);
       },
      onError: (e) => showPopupText(e),
    );
  }

  @override
  void onReady() {
    requestFocus();
    super.onReady();
  }


}