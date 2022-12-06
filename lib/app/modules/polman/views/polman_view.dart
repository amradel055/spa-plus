import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/polman/views/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/polman_controller.dart';

class PolmanView extends GetView<PolmanController> {
  const PolmanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          title:  TextWidget('HOME',size: 30.h,),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black87,
                      Colors.black87,
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.6),
                      Colors.transparent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 400.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppAssets.polman), fit: BoxFit.cover)),

              padding:  EdgeInsets.fromLTRB(40.h, 300.h,0, 0),
              child:  Column(
                children: [
                  Center(
                      child: TextWidget(AppStrings.orderpolman,textColor: Colors.white,size: 40.h,weight: FontWeight.bold,)),
                 ],
              ),


            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 10.h),
                    child: TextWidget(AppStrings.orderpolman,textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                  ),
                  SizedBox(
                      height: size.height*.43,
                      child:Column(
                        children: [
                          SizedBox(height: size.height*.1,width: size.width*.9,
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget('Time',weight: FontWeight.bold,size: 20,),
                                Container(width: size.width*.7,height: size.height*.2,
                                    decoration: BoxDecoration(borderRadius:const BorderRadius.all((Radius.circular(15))),color: Colors.grey[300],),
                                    child:
                                    const TimerWidget()
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 170.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: Container(
                                  height:size.height * 0.05 ,
                                  width: size.width * 0.8,
                                  decoration: const BoxDecoration(
                                    color: AppColors.appHallsRedDark,
                                    borderRadius: BorderRadius.all( Radius.circular(5)),
                                  ),
                                  child:const TextWidget("تآكيد الطلب" , textAlign: TextAlign.center,weight: FontWeight.bold,textColor: Colors.white,),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ])
          ],
        )
    );
  }
}
