import 'package:get/get.dart';

import '../controllers/hotel_halls_page_controller.dart';

class HotelHallsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotelHallsPageController>(
          () => HotelHallsPageController(),
    );
  }
}
