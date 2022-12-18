import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/halls/search_filter_hotel/views/widgets/timer.dart';
import 'package:easy_hotel/app/modules/spa/spa_search/views/widgets/category.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../controllers/search_filter_hotel_page_controller.dart';


class HallSearchFilterHotelPageView extends GetView<HallSearchFilterHotelPageController> {
  const HallSearchFilterHotelPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;

    DateTime selectedDate = DateTime.now();
    DateTime selectedDatetwo = DateTime.now();
    _selectDate(BuildContext context) async {
      final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2025),
      );
      // if (selected != null && selected != selectedDate)
        // setState(() {
        //   selectedDate = selected;
        // });
    }

    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: size.height*.16,
            backgroundColor: AppColors.appGreyLight,
            title: SizedBox(width: size.width,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                  child: GestureDetector(
                    onTap: (){
                    },
                    child:const TextWidget("بحث",size: 40,weight: FontWeight.bold , textColor:AppColors.appHallsRedDark )
                    ),
                  ),

                ],),
            )


        ),
        body: Container(
          color: AppColors.appGreyLight,
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(width: size.width*.81,height: size.height*.15,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white),
                  child: Row(
                    children: [
                      Container(width: size.width*.81,
                        height: size.height*.15,
                        child: Center(
                          child: GestureDetector(onTap: (){
                            _selectDate(context);
                          },
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [const TextWidget('تاريخ الحجز',weight: FontWeight.bold,size: 25,),
                                TextWidget("${selectedDatetwo.day}/${selectedDatetwo.month}/${selectedDatetwo.year}",textAlign: TextAlign.center,weight: FontWeight.bold,),

                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(width: size.width*.81,height: size.height*.2,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white),
                  child: Row(
                    children: [
                      Container(width: size.width*.4,
                        height: size.height*.2,
                        child: Center(
                          child: GestureDetector(onTap: (){
                          },
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [const TextWidget('وقت المغادره',weight: FontWeight.bold,),
                                const TimerWidget()
                              ],
                            ),
                          ),
                        ),
                      )
                      ,Container(
                        width: size.width*.005,
                        height: size.height*.18,
                        color: Colors.black,

                      ),
                      Container(width: size.width*.4,
                        height: size.height*2,
                        child: Center(
                          child: GestureDetector(onTap: (){
                          },
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextWidget('وقت الوصول',weight: FontWeight.bold,),
                                TimerWidget()

                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),




              Padding(
                padding:  EdgeInsets.fromLTRB(0, size.height*.2, 0, 0),
                child: GestureDetector(onTap: (){
                  // context.read<searchHallsScreenProvider>().getSearchAdditionsScreenGroups(1);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => hallsres()));

                  Get.toNamed(Routes.HOTEL_HALLS,arguments: controller.id);

                },
                  child: Container(alignment: Alignment.center,

                    height: size.height*.05,
                    width: size.width*.6,
                    decoration: const BoxDecoration(
                      borderRadius:  BorderRadius.all( Radius.circular(6.00)),color: AppColors.appHallsRedDark,
                    ),
                    child: const TextWidget('ابحث ',textColor: Colors.white,weight: FontWeight.bold,),

                  ),
                ),
              ),

            ],
          ),
        )



    );
  }

}
