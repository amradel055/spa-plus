import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import '../../../../../components/text_widget.dart';
import '../../../../../core/values/app_colors.dart';
import 'package:get/get.dart';
class CarsMainCategoryWidget extends StatelessWidget {
  const CarsMainCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return GestureDetector(
      onTap: (){
        Get.toNamed(Routes.carsCategory);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color:   AppColors.appGreyLight , width: size.width * 0.01),
            borderRadius: BorderRadius.circular(size.width * 0.05)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height * 0.1,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.appGreyLight,
              ),
            ),
            const TextWidget(
              "category.name!" ,
              size: 20,
              textColor: AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
