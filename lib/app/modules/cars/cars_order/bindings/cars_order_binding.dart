

import 'package:easy_hotel/app/modules/cars/cars_order/controllers/cars_order_controller.dart';
import 'package:get/get.dart';

class CarsOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarsOrderController>(() => CarsOrderController());
  }

}