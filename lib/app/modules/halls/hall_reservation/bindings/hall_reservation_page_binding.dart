import 'package:get/get.dart';

import '../controllers/hall_reservation_page_controller.dart';

class HallReservationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HallReservationPageController>(
          () => HallReservationPageController(),
    );
  }
}
