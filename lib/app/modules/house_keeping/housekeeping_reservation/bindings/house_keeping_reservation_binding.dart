import 'package:get/get.dart';

import '../controllers/house_keeping_reservation_controller.dart';

class HouseKeepingReservationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HouseKeepingReservationController>(
      () => HouseKeepingReservationController(),
    );
  }
}
