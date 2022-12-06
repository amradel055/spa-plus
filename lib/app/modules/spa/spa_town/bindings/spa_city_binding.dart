
import 'package:get/get.dart';

import '../controllers/spa_city_controller.dart';


class SpaCityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpaCityController>(
          () => SpaCityController(),
    );
  }
}
