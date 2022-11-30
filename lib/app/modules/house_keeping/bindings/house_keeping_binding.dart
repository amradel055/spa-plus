import 'package:get/get.dart';

import '../controllers/house_keeping_controller.dart';

class HouseKeepingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HouseKeepingController>(
      () => HouseKeepingController(),
    );
  }
}
