import 'package:easy_hotel/app/components/button_widget.dart';
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/utils/validator.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    const space = SizedBox(height: 20);

    return Scaffold(
      backgroundColor: AppColors.appBlue,
      body:SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 100.h),
              child: Container(
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40.00))

                  ),
                  child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios,color:Colors.white ,size: size.height*.12,) )),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 50.h),
              child: TextWidget(AppStrings.Welcome,textColor: Colors.white,weight:FontWeight.bold,size: size.height*.05,),
            ),
            Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.00)),color: Colors.white),
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(25),
              child: Form(
                key: controller.form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    TextFieldWidget(
                      controller:controller.phoneController,
                      hint: AppStrings.phone,
                      suffixIcon: Icons.phone,
                      ltr: true,
                      validator: AppValidator.forceValue,
                      textInputAction: TextInputAction.next,
                    ),
                    space,
                    TextFieldWidget(
                      controller:controller.passwordController,
                      hint: AppStrings.password,
                      suffixIcon: Icons.password,
                      ltr: true,
                      validator: AppValidator.forceValue,

                    ),
                    space,
                    ButtonWidget(
                      text: AppStrings.login,
                      onPressed: () => controller.login(),
                      expanded: true,
                      fontColor: Colors.white,
                      fontSize: size.height*.026,
                      buttonColor: Theme.of(context).primaryColor,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(left:50),
                      child: Row(
                          children:[
                            const TextWidget(AppStrings.haveAccount),
                            GestureDetector(
                                onTap: ()=> Get.toNamed(Routes.REGISTER ),
                                child: const TextWidget(AppStrings.register,textColor: Colors.red,))
                          ]


                      ),
                    )



                  ],
                ),
              ),
            ),
          ],
        ),
      )

    );
  }
}
