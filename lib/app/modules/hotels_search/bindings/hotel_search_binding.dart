

import 'package:get/get.dart';

import '../controller/hotel_search_controller.dart';

class HotelSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotelSearchController>(() => HotelSearchController());
  }

}