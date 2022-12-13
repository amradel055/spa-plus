import 'package:get/get.dart';

import '../controllers/room_search_filter_page_controller.dart';

class RoomSearchFilterPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomSearchFilterPageController>(
          () => RoomSearchFilterPageController(),
    );
  }
}
