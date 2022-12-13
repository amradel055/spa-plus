import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/spa/spa_search/views/widgets/category.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../controllers/room_search_filter_page_controller.dart';


class RoomSearchFilterPageView extends GetView<RoomSearchFilterPageController> {
  const RoomSearchFilterPageView({Key? key}) : super(key: key);
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

    }

    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: size.height*.16,
            backgroundColor: AppColors.appGreyLight,
            title: Directionality(textDirection: TextDirection.rtl,
              child: Container(width: size.width,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Text('بحث',style:TextStyle(fontSize: size.width *0.09 , fontWeight: FontWeight.w900 , color:AppColors.appBlue , fontFamily: "CairoBold")
                      ),
                    ),
                  ),
                  ],),
              ),
            )


        ),
      body:SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          color: AppColors.appGreyLight,
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(width: size.width*.81,height: size.height*.15,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white),
                  child: Row(
                    children: [
                      Container(width: size.width*.4,
                        height: size.height*.15,
                        child: Center(
                          child: GestureDetector(onTap: (){
                            _selectDate(context);
                          },
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text('ميعاد المغادره',),
                                Text("${selectedDatetwo.day}/${selectedDatetwo.month}/${selectedDatetwo.year}",textAlign: TextAlign.center,),

                              ],
                            ),
                          ),
                        ),
                      )
                      ,Container(
                        width: size.width*.005,
                        height: size.height*.13,
                        color: Colors.black,

                      ),  Container(width: size.width*.4,
                        height: size.height*15,
                        child: Center(
                          child: GestureDetector(onTap: (){
                            _selectDate(context);
                          },
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('ميعاد الوصول'),
                                Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",textAlign: TextAlign.center,),

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
                padding:  EdgeInsets.fromLTRB(0, size.height*.1, 0, 0),
                child: Container(height: size.height*.31,width: size.width*.8,
                  child: Directionality(textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: size.height*.07,

                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: SizedBox(width: size.width*.3,
                                      child: Text('عدد الاشخاص',)),
                                )),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(0, 0, size.width*.3, 5),
                              child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),border: Border.all(color: AppColors.appGreyDark),color: AppColors.appGreyDark),                                child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      child: Text('+',),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Container(
                                      child: Text('${"3"}'),
                                    ),
                                  ),
                                  GestureDetector(onTap: (){

                                  },
                                    child: Container(
                                      child: Text('-'),
                                    ),
                                  )
                                ],
                              ),
                              ),
                            )

                          ],
                        ),Container(
                          width: size.width*.8,
                          height: size.height*.003,
                          color: Colors.grey[400],
                        ),Container(
                          height: size.height*.07,
                          child: Row(
                            children: [
                              SizedBox(
                                  width: size.width*.3,
                                  child: Text('عدد الاطفال')),
                              Padding(
                                padding:  EdgeInsets.fromLTRB(0, 5, size.width*.3, 10),
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),border: Border.all(color:AppColors.appGreyDark),color: AppColors.appGreyDark),                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){

                                      },
                                      child: Container(
                                        child: Text('+'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: Container(
                                        child: Text('${"2"}',),
                                      ),
                                    ),
                                    GestureDetector(onTap: (){

                                    },
                                      child: Container(
                                        child: Text('-',),
                                      ),
                                    )
                                  ],
                                ),
                                ),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),GestureDetector(onTap: (){
                Get.toNamed(Routes.ALL_ROOMS);

              },
                child: Container(alignment: Alignment.centerRight,

                  height: size.height*.05,
                  width: size.width*.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all( Radius.circular(6.00)),color: AppColors.appBlue,
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('احجز الان '),
                    ],
                  ),

                ),
              ),

            ],
          ),
        ),
      )
    );
  }


}
