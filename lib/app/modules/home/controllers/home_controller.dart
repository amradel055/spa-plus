import 'package:easy_hotel/app/modules/allServices/controllers/all_services_controller.dart';
import 'package:easy_hotel/app/modules/allServices/views/all_services_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../rooms/rooms_homepage/views/rooms_view.dart';

class HomeController extends GetxController {

  final pageIndex = 0.obs;
  List<Widget> pages = const[
    RoomsView(),
    RoomsView(),
    AllServicesView()
  ];
  @override
  void onInit() {
    Get.isRegistered<AllServicesController>() ? Get.find<AllServicesController>() : Get.put(AllServicesController());
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeView(int index) => pageIndex.value = index;
}
