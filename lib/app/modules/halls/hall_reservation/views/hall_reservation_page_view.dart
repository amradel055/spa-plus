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
import '../controllers/hall_reservation_page_controller.dart';
import 'widgets/halls_search_card.dart';


class HallReservationPageView extends GetView<HallReservationPageController> {
  const HallReservationPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    final row = Container(
      height: size.height*.002,color: AppColors.appHallsRedDark,
    );
    List<String> hobbyList = ["","",""];
    List<String>? selectedHobby = [];

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
            const TextWidget('الاضافات الخاصة بالقاعة',weight: FontWeight.bold,size: 20,),
            SizedBox(
              height: size.height * 0.7,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // for(AdditionsGroupModel add in _halls!.additionsGroupDTOList!)
                    Container(width: size.width*.9,
                      height: size.height*.3,
                      decoration: const BoxDecoration(
                        border: Border(
                        bottom: BorderSide( //                   <--- left side
                          color: AppColors.appGreyDark,
                          width: 3.0,
                        ),
                      ),),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                         const TextWidget("add.name!",weight: FontWeight.bold,size: 15,),
                          SizedBox(width:size.width*.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,width: size.width*.005, style: BorderStyle.solid
                                    ),
                                    borderRadius:const BorderRadius.all(Radius.circular(24))
                                ),
                                  child:
                                  CircleAvatar(backgroundColor: Colors.white,radius:23.00,
                                      child: IconButton(onPressed: (){},icon: Icon(Icons.add ,size: size.width*.07,color:AppColors.appHallsRedDark
                                        ,),)
                                  ),
                                ),
                                const TextWidget("_halls!.name!",weight: FontWeight.bold,size: 15,),

                              ],
                            ),

                          )

                          ,
                          const TextWidget('مقترحات',weight: FontWeight.bold,size: 20,),
                          SizedBox(width: size.width*.9,
                            height:size.height*.1,

                            child:
                            SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),

                              child: Wrap(children: hobbyList.map(
                                    (hobby) {
                                  bool isSelected = false;
                                  if (selectedHobby.contains(hobby)) {
                                    isSelected = true;
                                  }
                                  return GestureDetector(
                                    onTap: () {
                                      if (!selectedHobby.contains(hobby)) {
                                        if (selectedHobby.length < hobbyList.length) {
                                          selectedHobby.add(hobby);

                                        }
                                      } else {
                                        selectedHobby
                                            .removeWhere((element) => element == hobby);

                                      }
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 4),
                                        child: Container(
                                          padding:const  EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 12),
                                          decoration: BoxDecoration(
                                              color: Colors.brown[300],
                                              borderRadius: BorderRadius.circular(18),
                                              border: Border.all(
                                                  color: isSelected
                                                      ? Colors.green
                                                      : Colors.grey,
                                                  width: 2)),
                                          child: Text(
                                            "hobby.name!",
                                            style: TextStyle(
                                                color:
                                                isSelected ? Colors.red : Colors.white,
                                                fontSize: 14),
                                          ),
                                        )),
                                  );
                                },
                              ).toList(),
                              ),
                            ),


                          ),


                        ],
                      ),
                    ),

                ],
              ),
            ),
            SizedBox(width: size.width*.9,

              child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.HALL_CALENDER);
                },
                style:ButtonStyle(backgroundColor:MaterialStateProperty.all(AppColors.appHallsRedDark)),
                child: const TextWidget('استمرار',textColor: Colors.white,weight: FontWeight.bold,size: 15,),

              ),
            )



          ])
    );
  }
}
