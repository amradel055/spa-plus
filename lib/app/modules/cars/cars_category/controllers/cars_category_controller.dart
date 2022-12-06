

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarsCategoryController extends GetxController {
  Rx<RangeValues> currentRangeFilterValues = const RangeValues(40, 80).obs;


  void changeRangeValue(RangeValues values) {
    currentRangeFilterValues.value = values;
  }
}