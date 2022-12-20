import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/data/model/halls/dto/request/halls_save_request.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/hall_detail_response.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_response.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/request/room_save_request.dart';
import 'package:easy_hotel/app/data/model/rooms/dto/response/room_response.dart';
import 'package:easy_hotel/app/data/repository/halls/halls_repository.dart';
import 'package:easy_hotel/app/data/repository/rooms/rooms_repository.dart';
import 'package:get/get.dart';

class RoomReservationPageController extends GetxController {
  final RoomResponse room = Get.arguments;
   RxList selectedadditions=[].obs;
  final isLoading = false.obs;


  getRoomSave() async {
    isLoading(true);
    SalesDetailRoomDTOModel ?sale;
    sale!.roomId=room.id;
    final request = RoomsSaveRequest(
      companyId: AppConstants.companyId,
      createdBy: AppConstants.createdBy,
      branchId: room.branchId,
      salesDetailRoomDTOModel:sale
    );
    RoomsRepository().getRoomSave(request,
        onSuccess: (data) {
          showPopupText( "تم الحفظ بنجاح");
        },
        onError: (e) => showPopupText( e.toString()),
        onComplete: () => isLoading(false)
    );
  }


}
