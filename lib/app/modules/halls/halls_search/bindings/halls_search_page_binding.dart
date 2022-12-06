import 'package:get/get.dart';

import '../controllers/halls_search_page_controller.dart';

class HallsSearchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HallsSearchPageController>(
          () => HallsSearchPageController(),
    );
  }
}
