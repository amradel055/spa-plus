import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() {
            return AnimatedPositioned(
              right: 0,
              left: 0,
              top: controller.showLogo.value ? 0 : -(1000.h),
              bottom: 0,
              duration: AppConstants.ANIMATION_DURATION,
              curve: Curves.easeOutBack,
              child: Center(
                  child: ImageWidget(
                    path: AppAssets.logoImg,
                    tag: AppStrings.logoHeroTag,
                    width: 120,
                  )),
            );
          })
        ],
      ),
    );
  }
}
