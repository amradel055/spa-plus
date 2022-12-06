

import 'package:easy_hotel/app/modules/cars/cars_category/controllers/cars_category_controller.dart';
import 'package:get/get.dart';

class CarsCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarsCategoryController>(
            () => CarsCategoryController());
  }
}