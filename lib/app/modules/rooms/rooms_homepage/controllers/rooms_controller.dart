import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/request/advertisement_request_dto.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/request/cities_request_dto.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/request/offers_rooms_request_dto.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/response/advertisement_response.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/response/city_response.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/response/room_response.dart';
import 'package:easy_hotel/app/data/repository/rooms/rooms_repository.dart';
import 'package:get/get.dart';

class RoomsController extends GetxController {
  final cities = <CityResponse>[].obs;
  final roomsOffer = <RoomResponse>[].obs;
  final roomsAds = <AdvertisementResponse>[].obs;
  final roomsDiscover = <AdvertisementResponse>[].obs;
  final isLoading = false.obs;


  @override
  void onInit() {
    super.onInit();
    getRoomOffer();
    getCities();
    getAds();
    getDiscover();


  }

  getRoomOffer() async {
    isLoading(true);
    final request = OffersRoomsRequest(
      appId: 7,

    );
    RoomsRepository().getRoomsOffer(request,
        onSuccess: (data) {
          roomsOffer.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
  getCities() async {
    isLoading(true);
    final request = CitiesRequest(
      branchId: 232,

    );
    RoomsRepository().getCities(request,
        onSuccess: (data) {
          cities.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
  getAds() async {
    isLoading(true);
    final request = AdvertisementRequest(
      appId: 7,
      itemType: 4

    );
    RoomsRepository().getRoomsAds(request,
        onSuccess: (data) {
          roomsAds.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }
  getDiscover() async {
    isLoading(true);
    final request = AdvertisementRequest(
        appId: 7,
        itemType: 5
    );
    RoomsRepository().getRoomsAds(request,
        onSuccess: (data) {
          roomsDiscover.assignAll(data.data);
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }

}
