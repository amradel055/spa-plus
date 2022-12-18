import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import '../controllers/hall_calender_page_controller.dart';


class HallCalenderPageView extends GetView<HallCalenderPageController> {
  const HallCalenderPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    final row = Container(
      height: size.height*.002,color: AppColors.appHallsRedDark,
    );
    List<String> hobbyList = [
      '05:00AM',
      '06:00AM',
      '07:00AM',
      '08:00AM',
      '09:00AM',
      '10:00AM',
      '11:00AM',
    ];
    List<String>? selectedHobby = [];
    int children =0;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appHallsRedDark,
        foregroundColor: Colors.white,
        title:  const  TextWidget(
          "حجز قاعه"
        ),
        centerTitle: true,
      ),
      body:ListView(
        padding: const EdgeInsets.all(15),
          children: [
            TableCalendar(
              calendarStyle:const CalendarStyle(todayDecoration: BoxDecoration(color:  AppColors.appHallsRedDark, shape: BoxShape.rectangle,borderRadius: BorderRadius.all(Radius.circular(10))),),
              daysOfWeekVisible : false,
              pageJumpingEnabled : true,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              rowHeight: 40,
            ),
            Row(
              children: [
                const Icon(Icons.thirteen_mp_outlined ,color: Colors.black,),
                const TextWidget('١٢ نوفمبر ٢٠٢٢',weight: FontWeight.bold,)
              ],
            ),
            Container(
              width: size.width*.8,
              height: size.height*.003,
              color: AppColors.appGreyDark,
            ),
            SizedBox(height: size.height*.05,width: size.width*.9,
              child: Row(
                children: [
                  const TextWidget('عدد الاشخاص',weight: FontWeight.bold,),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(0, 0, size.width*.3, 0),
                    child: Container(
                      width: size.width*.3,height: size.height*.035,
                      decoration: const BoxDecoration(color: AppColors.appHallsRedDark),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: (){
                            },
                            child: const TextWidget('+',textColor: Colors.white,weight: FontWeight.bold,),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextWidget('$children',textColor: Colors.white,weight: FontWeight.bold,),
                          ),
                          GestureDetector(onTap: (){

                          },
                            child:const TextWidget('-',textColor: Colors.white,weight: FontWeight.bold,),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: size.width*.8,
              height: size.height*.003,
              color: AppColors.appGreyDark,
            ),
            SizedBox(width: size.width*.9,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(' وقت الوصول',weight: FontWeight.bold,),
                  SizedBox(width: size.width*.9,
                    height:size.height*.12,

                    child:
                    SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),

                      child: Wrap(children: hobbyList.map(
                            (hobby) {
                          bool isSelected = false;
                          if (selectedHobby!.contains(hobby)) {
                            isSelected = true;
                          }
                          return GestureDetector(
                            child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 3),
                                child: Container(
                                  padding:const  EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: AppColors.appHallsRedDark,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: isSelected
                                              ? Colors.green
                                              : Colors.grey,
                                          width: 2)),
                                  child: Text(
                                    hobby,
                                    style: TextStyle(
                                        color:
                                        isSelected ? Colors.grey : Colors.white,
                                        fontSize: 12),
                                  ),
                                )),
                          );
                        },
                      ).toList(),
                      ),
                    ),


                    //
                  ),

                ],
              ),
            ),
            Container(
              width: size.width*.8,
              height: size.height*.003,
              color: AppColors.appGreyDark,
            ),
            SizedBox(width: size.width*.9,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(' وقت المغادره',weight: FontWeight.bold,),
                  SizedBox(width: size.width*.9,
                    height:size.height*.12,

                    child:
                    SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),

                      child: Wrap(children: hobbyList.map(
                            (hobby) {
                          bool isSelected = false;
                          if (selectedHobby!.contains(hobby)) {
                            isSelected = true;
                          }
                          return GestureDetector(
                            onTap: () {
                              // if (!selectedHobby!.contains(hobby)) {
                              //   if (selectedHobby!.length < 5) {
                              //     selectedHobby!.add(hobby);
                              //
                              // } else {
                              //   selectedHobby!
                              //       .removeWhere((element) => element == hobby);
                              //
                              // }
                            },
                            child: Container(
                                margin:const  EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 3),
                                child: Container(
                                  padding:const  EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: AppColors.appHallsRedDark,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: isSelected
                                              ? Colors.green
                                              : Colors.grey,
                                          width: 2)),
                                  child: Text(
                                    hobby,
                                    style: TextStyle(
                                        color:
                                        isSelected ? Colors.grey : Colors.white,
                                        fontSize: 12),
                                  ),
                                )),
                          );
                        },
                      ).toList(),
                      ),
                    ),


                    //
                  ),

                ],
              ),
            ),
            GestureDetector(onTap: ()  async{
              // await context.read<savehallsScreenProvider>().save(1, context.read<HallsDetailsScreenProvider>().selectedHobby, 2,2,22, 232, 2, context);
              // Navigator.push(context, MaterialPageRoute(builder: (context) => reserv()));

            },
              child: Container(
                height:size.height * 0.05,
                width: size.width * 0.9,
                decoration:const BoxDecoration(
                  color: AppColors.appHallsRedDark,
                ),
                child:const TextWidget(AppStrings.reserve , textAlign: TextAlign.center,textColor: Colors.white,weight: FontWeight.bold,),
              ),
            ),



          ])
    );
  }
}
