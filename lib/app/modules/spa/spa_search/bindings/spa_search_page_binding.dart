import 'package:get/get.dart';

import '../controllers/spa_search_page_controller.dart';

class SpaSearchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpaSearchPageController>(
          () => SpaSearchPageController(),
    );
  }
}
