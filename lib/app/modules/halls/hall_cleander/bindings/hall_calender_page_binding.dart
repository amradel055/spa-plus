import 'package:get/get.dart';

import '../controllers/hall_calender_page_controller.dart';

class HallCalenderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HallCalenderPageController>(
          () => HallCalenderPageController(),
    );
  }
}
