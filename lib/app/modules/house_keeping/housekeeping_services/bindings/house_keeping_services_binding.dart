import 'package:get/get.dart';

import '../controllers/house_keeping_services_controller.dart';

class HouseKeepingServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HouseKeepingServicesController>(
      () => HouseKeepingServicesController(),
    );
  }
}
