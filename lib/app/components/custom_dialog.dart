import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_widget.dart';


class CustomAlertDialog extends StatelessWidget {

  final String? title;
  final String? subtitle;
  final String? confirmText;
  final String? cancelText;
  final Widget? content;
  final Function() onConfirm;
  final Function()? onCancel;
  final bool isLoading;
  final Color? color;
  final bool isCancelable;

  const CustomAlertDialog({Key? key,
    this.title,
    this.subtitle,
    this.content,
    this.confirmText,
    this.cancelText,
    required this.onConfirm,
    this.isLoading = false,
    this.color,
    this.onCancel,
    this.isCancelable=true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.radius)),
      child: Padding(
        padding: AppConstants.pagePadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(title!=null)
              Center(child: TextWidget(title!, textColor:Theme.of(context).primaryColor,size: 22.sp,weight: FontWeight.w700,textAlign: TextAlign.center,)),
            const SizedBox(height: 10,),
            if(subtitle!=null)
              TextWidget(subtitle!,textColor: Theme.of(context).textTheme.bodyText1!.color,size: 22.sp,),
            if(content != null)
              content!,
            const SizedBox(height: 15),
            Column(
              children: [
                ButtonWidget(
                  onPressed: onConfirm,
                  width: double.infinity,
                  buttonColor: Theme.of(context).primaryColor,
                  fontColor: AppColors.white,
                  contentPadding: EdgeInsets.zero,
                  text: confirmText ?? AppStrings.confirm,
                ),
                if(isCancelable)
                  ButtonWidget(
                    width: double.infinity,
                    onPressed: onCancel??() => Get.close(1),
                    buttonColor: AppColors.black,
                    margin: EdgeInsets.zero,
                    isOutlined: true,
                    contentPadding: EdgeInsets.zero,
                    fontColor: AppColors.white,
                    text: cancelText ?? AppStrings.goBack,
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
