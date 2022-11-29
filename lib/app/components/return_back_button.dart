import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReturnBackWidget extends StatelessWidget {
  const ReturnBackWidget({Key? key,this.onPressed}) : super(key: key);

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: InkWell(
        onTap: onPressed ?? ()=> Get.back(),
        child: Center(child: Icon(Icons.arrow_back_rounded,color: AppColors.black,size: 20,)),
      ),
    );
  }
}
