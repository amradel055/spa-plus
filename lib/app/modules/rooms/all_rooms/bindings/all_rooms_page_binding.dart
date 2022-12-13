import 'package:get/get.dart';

import '../controllers/all_rooms_page_controller.dart';

class AllRoomsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllRoomsPageController>(
          () => AllRoomsPageController(),
    );
  }
}
