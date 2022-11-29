import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/all_services_controller.dart';

class AllServicesView extends GetView<AllServicesController> {
  const AllServicesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      leading:  Padding(
        padding: const EdgeInsets.fromLTRB(10.0,5,0,0),
        child: TextWidget(AppStrings.hello,size: 20.h,textColor: AppColors.appBlue,weight: FontWeight.bold,),
      ),
      leadingWidth: 300.h,
      actions: [
        PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child:  Row(
                children: [
                  const Icon(Icons.logout),
                  SizedBox(
                    width: 10.h,
                  ),
                  const Text(AppStrings.logout)
                ],
              ),
            ),
            // popupmenu item 2
          ],
          offset:const Offset(0, 50),
          color: AppColors.appGreyDark,
          elevation: 2,
        ),


      ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 0.h,
        mainAxisSpacing: 0.h,
        childAspectRatio: size.aspectRatio * 1.6,
        children: [
         for( int i =0;i<=7;i++)
           _serveces(size, AppColors.appBlue, "name", 100.h, 100.h, "route")

        ],
      )


    );
  }
  _serveces(Size size ,Color color ,String name , double height ,double width ,String route){

    return Padding(
      padding:  EdgeInsets.fromLTRB(size.width*.01, size.height*.01,size.width*.01, 0),
      child: GestureDetector(onTap: (){
        Get.toNamed(route);

      },
        child: Container(width: width,
          height: height,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.00)),
            color: color,
          ),
          child: Stack(alignment: AlignmentDirectional.topEnd,
            children: [Container(

              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.00))
              ),
            ),
              Padding(
                padding:  EdgeInsets.fromLTRB(0,size.height*.02,0,0),
                child: Container(width: size.width*.3,
                    height: size.height*.05,
                    child: Text(name)),
              )
            ],
          ),
        ),
      ),
    );
  }

}
