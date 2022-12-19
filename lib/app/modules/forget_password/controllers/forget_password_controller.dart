import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/data/repository/auth/auth_repository.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/model/auth/forget_password/dto/request/forget_password_request_dto.dart';

class ForgetPasswordController extends GetxController {
  var emailController = TextEditingController();
  final isLoading = false.obs;
  final requestDto = ForgetPasswordRequest();
  final form = GlobalKey<FormState>();


  Future reset() async {
    if(!form.currentState!.validate()) return;
    isLoading(true);
    AuthRepository().resetPassword(requestDto,
        onSuccess: (data){
          showPopupText(data.msg);
        },
        onError: (error)=> showPopupText( error.toString()),
        onComplete: () => isLoading(false)
    );
  }




}
