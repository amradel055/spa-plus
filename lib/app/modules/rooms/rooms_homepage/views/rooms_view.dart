import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/rooms/rooms_homepage/views/widgets/discover.dart';
import 'package:easy_hotel/app/modules/rooms/rooms_homepage/views/widgets/offer_card.dart';
import 'package:easy_hotel/app/modules/rooms/rooms_homepage/views/widgets/towns.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/rooms_controller.dart';
import 'widgets/advertisment_card.dart';

class RoomsView extends GetView<RoomsController> {
  const RoomsView({Key? key}) : super(key: key);
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
              height: 300.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.rooms), fit: BoxFit.cover)),

              padding:  EdgeInsets.fromLTRB(size.width*.1, 175.h,size.width*.1, 0),
              child:  Column(
                children: [
                  Center(
                      child: TextWidget(AppStrings.searchlabel,textColor: Colors.white,size: 20.h,weight: FontWeight.bold,)),
                  Row(
                    children: [
                      SizedBox(
                          width: size.width*.8 ,

                          child:
                          GestureDetector(
                            onTap:(){Get.toNamed(Routes.SPASEARCHPAGE);},
                            child:   TextFieldWidget(
                              enabled: false,
                              hint : AppStrings.search,
                              suffixIcon: Icons.search,
                              ltr: true,
                              onTap: (){Get.toNamed(Routes.ROOM_SEARCH);},

                            ),
                          )


                      ),

                    ],
                  )],
              ),


            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
                    child: TextWidget(AppStrings.searchlabel,textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                  ),
                  SizedBox(
                      height: size.height*.25,
                      child:
                      ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const RoomCard();
                        },

                      )
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
                    child: TextWidget(AppStrings.towns,textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                  ),
                  SizedBox(
                      height: size.height*.18,
                      child:
                      ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const TownCard(image: AppAssets.rooms, name: "cairo");
                        },

                      )
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
                    child: TextWidget("الاعلانات",textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                  ),
                  SizedBox(
                      height: size.height*.25,
                      child:
                      ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const AdCard();
                        },

                      )
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
                    child: TextWidget("اكتشف المزيد",textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                  ),
                  SizedBox(
                      height: size.height*.18,
                      child:
                      ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const DiscoverCard(image: AppAssets.rooms, name: "cairo");
                        },

                      )
                  ),


                ])
          ],
        )
    );
  }
}
