import 'package:easy_hotel/app/core/utils/show_popup_text.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/data/model/auth/register/dto/request/register_request.dart';
import 'package:easy_hotel/app/data/repository/auth/auth_repository.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var nameController = TextEditingController();
  var userNameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final isLoading = false.obs;
  final requestDto = RegisterRequestDto();

  final registerForm = GlobalKey<FormState>();

  Future register() async {
    if(!registerForm.currentState!.validate()) return;
    isLoading(true);
    AuthRepository().register(requestDto,
        onSuccess: (data){
          UserManager().login(data.data);
          Get.offNamed(Routes.HOME);
        },
        onError: (error)=> showPopupText(error.toString()),
        onComplete: () => isLoading(false)
    );
  }



}
