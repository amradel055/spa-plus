import 'package:get/get.dart';

import '../controllers/room_search_page_controller.dart';

class RoomSearchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomSearchPageController>(
          () => RoomSearchPageController(),
    );
  }
}
