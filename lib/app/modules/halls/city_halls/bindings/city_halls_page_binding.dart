import 'package:get/get.dart';

import '../controllers/city_halls_page_controller.dart';

class CityHallsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CityHallsPageController>(
          () => CityHallsPageController(),
    );
  }
}
