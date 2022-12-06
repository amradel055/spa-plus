import 'package:get/get.dart';

import '../controllers/food_section_controller.dart';

class FoodSectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodSectionController>(
      () => FoodSectionController(),
    );
  }
}
