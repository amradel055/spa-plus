
import 'package:get/get.dart';

import '../controllers/spa_hotel_controller.dart';


class SpaHotelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpaHotelController>(
          () => SpaHotelController(),
    );
  }
}
