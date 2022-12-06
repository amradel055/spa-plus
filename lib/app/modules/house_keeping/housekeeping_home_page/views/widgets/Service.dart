import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HousekeepingServicesWidget extends StatelessWidget {
  const HousekeepingServicesWidget({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(onTap: (){
      Get.toNamed(Routes.HOUSEKEEPING_SERVICES);
    },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.00)),
          border:  Border.all(color: AppColors.appGreyDark,width: 2),
          color: Colors.blueAccent,
        ),
        child: Column(
          children: [
            ImageWidget(path: image
            ,fit: BoxFit.cover,),
            const TextWidget("house.name!", textAlign: TextAlign.center,weight:FontWeight.bold,size: 20,)
          ],
        ),
      ),
    );
  }
}
