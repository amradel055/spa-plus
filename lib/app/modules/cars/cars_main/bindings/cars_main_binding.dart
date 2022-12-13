

import 'package:easy_hotel/app/modules/cars/cars_main/controllers/cars_main_controller.dart';
import 'package:get/get.dart';

class CarsMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarsMainController>(() => CarsMainController());
  }

}