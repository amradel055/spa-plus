

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CarsOrderController extends GetxController {

  Rx<TextEditingController> timeController = TextEditingController().obs;
  Rx<TextEditingController> dateController = TextEditingController().obs;



  changeTime(DateTime value){
    timeController.value.text = "${value.toLocal()}".split(" ")[0];
  }


  changeDate(DateTime value){
    dateController.value.text = "${value.toLocal()}".split(" ")[0];
  }
}