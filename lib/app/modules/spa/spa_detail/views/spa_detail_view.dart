import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/bar_widget.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_images_Widget.dart';

import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_review_widget.dart';

import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/spa_details_controller.dart';
import 'widgets/filter_bar.dart';
import 'widgets/spa_info_widget.dart';

class SpaDetailView extends GetView<SpaDetailsController> {
  const SpaDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title:  TextWidget('DETAILS',size: 30.h,),
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
            height: 300.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.salon), fit: BoxFit.cover)),

              padding:  EdgeInsets.fromLTRB(50.h, 120.h,50.h, 20.h),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 TextWidget("_spa!.name!" ,size: 20.h,weight: FontWeight.bold,textColor: Colors.white,),
                const TextWidget('دبي الامارات العربية المتحدة',textColor: Colors.white,),
                Row(
                  children: [
                    const Icon(Icons.star ,color: Colors.yellowAccent,),
                    const TextWidget('3.5    (130 مراجعة)' ,textColor: Colors.white,),
                    Padding(
                      padding:  EdgeInsets.only(left: size.width*.3),
                      child: Container(
                        height:size.height * 0.05 ,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          color: AppColors.appHallsRedDark,
                          borderRadius: BorderRadius.all( Radius.circular(size.width * 0.05)),
                        ),
                        child: const TextWidget("مفتوح" , textAlign: TextAlign.center,),
                      ),
                    ),
                  ],
                )
              ],
            ),


          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const FilterBarWidgets( title:  'information',index:0,),
              const FilterBarWidgets( title: 'services',index: 1,),
              const FilterBarWidgets( title: 'images',index: 2,),
              const FilterBarWidgets( title: 'reviews',index: 3,)
            ],),

          Container(
        height: size.height*.002,color: AppColors.appHallsRedDark,
           ),
          Obx((){
            return [
              SpaInfoWidget(),SpaServices(),SpaImagesShow(),SpaReviewsWidget(image: 'hgghghh',)
            ][controller.index.value];
          })



        ],
      )
    );
  }

}
