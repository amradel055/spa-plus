import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  final form = GlobalKey<FormState>();
  login(){
    if(form.currentState!.validate()){
      Get.toNamed(Routes.ALLSERVICES);

    }
  }
}
