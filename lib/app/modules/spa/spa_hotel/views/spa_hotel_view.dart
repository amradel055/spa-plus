import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/spa/spa_search/views/widgets/spa_search_card.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../spa_detail/views/widgets/filter_bar.dart';
import '../controllers/spa_hotel_controller.dart';
import 'widgets/spa_hotel_card.dart';


class SpaHotelView extends GetView<SpaHotelController> {
  const SpaHotelView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;


    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appHallsRedDark,
          foregroundColor: Colors.white,
          title: const TextWidget(AppStrings.spasHotel,weight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
        body: ListView(

          children: [

            Padding(
              padding: EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
              child: TextWidget(
                AppStrings.spas, weight: FontWeight.bold, size: 20.h,),
            ),
            Obx(() {
              if(controller.isLoading.value){
                return Center(
                  child: Common.getSpin(),
                );
              }
              return SizedBox(
                height: size.height * .82,
                child:
                ListView.builder(
                  itemCount: controller.spaHotelGroup.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return SpaHotelCardWidget(
                      image: 'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg',
                      title: controller.spaHotelGroup[index].name!,
                      subtitle: controller.spaHotelGroup[index].cityName!,
                      id: controller.spaHotelGroup[index].id!,);
                  },

                ),);
            }),


          ],
        )
    );
  }
}
