import 'package:get/get.dart';

import '../controllers/search_filter_hotel_page_controller.dart';

class HallSearchFilterHotelPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HallSearchFilterHotelPageController>(
          () => HallSearchFilterHotelPageController(),
    );
  }
}
