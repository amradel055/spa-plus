import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/halls/hall_detail/views/widgets/hall_services.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/hall_details_controller.dart';


class HallDetailView extends GetView<HallDetailsController> {
  const HallDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.transparent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          if(controller.isLoading.value){
            return Center(
              child: Common.getSpin(),
            );
          }
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 250.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppAssets.halls), fit: BoxFit.cover)),

                padding: EdgeInsets.fromLTRB(50.h, 120.h, 50.h, 20.h),


              ),
              SizedBox(
                  height: size.height * .1,
                  child:
                  ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                        child: ImageWidget(
                          path: "https://www.arabiaweddings.com/sites/default/files/articles/2020/02/wedding_venues_in_amman.png",
                          radius: 0,
                          width: size.width * .3,
                          height: size.height * .18,
                          fit: BoxFit.fill,),
                      );
                    },

                  )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            controller.hall!.name!, weight: FontWeight.bold,
                            textColor: AppColors.appHallsRedDark,),
                          Row(
                            children: [
                              Container(color: AppColors.appHallsRedDark,
                                  child: TextWidget(
                                    controller.hall!.loyaltyPoints!.toString(),
                                    textColor: Colors.white,
                                    weight: FontWeight.bold,)),
                              const TextWidget(
                                'مراجعات ', weight: FontWeight.bold,)

                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width: size.width * .9,
                      height: size.height * .005,
                      color: AppColors.appGreyDark,
                    ),
                    SizedBox(
                      height: 35,
                      child: Row(children: [
                        const TextWidget('${AppStrings.number}:',
                          weight: FontWeight.bold,),
                        TextWidget('${controller.hall!.capacity!.toString()}',
                          weight: FontWeight.bold,),

                      ],),
                    ),
                    Container(
                      width: size.width * .9,
                      height: size.height * .005,
                      color: AppColors.appGreyDark,
                    ),
                    SizedBox(
                      height: 35,
                      child: Row(children: [
                        const TextWidget('${AppStrings.design}:',
                          weight: FontWeight.bold,),
                        TextWidget('${controller.hall!.price.toString()}',
                          weight: FontWeight.bold,),

                      ],),
                    ),
                    Container(
                      width: size.width * .9,
                      height: size.height * .005,
                      color: AppColors.appGreyDark,
                    ),
                    const TextWidget(
                      AppStrings.servicesHall, weight: FontWeight.bold,
                      textColor: AppColors.appHallsRedDark,),
                    SizedBox(
                        height: size.height * .3,
                        child:
                        GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemCount: controller.hall!.additionsGroupDTOList!
                              .length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return HallServices(
                                image: "https://www.arabiaweddings.com/sites/default/files/articles/2020/02/wedding_venues_in_amman.png",
                                name: controller.hall!
                                    .additionsGroupDTOList![index].name!);
                          },

                        )
                    ),
                    SizedBox(width: size.width * .9,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.HALL_RESERVATION);
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColors
                                .appHallsRedDark)),
                        child: const TextWidget(
                          AppStrings.reserve, textColor: Colors.white,
                          weight: FontWeight.bold,),

                      ),
                    )
                  ],
                ),
              )
            ],
          );
        })
    );
  }

}
