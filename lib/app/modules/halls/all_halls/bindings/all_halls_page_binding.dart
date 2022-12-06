import 'package:get/get.dart';

import '../controllers/all_halls_page_controller.dart';

class AllHallsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllHallsPageController>(
          () => AllHallsPageController(),
    );
  }
}
