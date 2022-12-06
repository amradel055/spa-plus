import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/halls/halls_homepage/views/widgets/halls.dart';
import 'package:easy_hotel/app/modules/house_keeping/housekeeping_home_page/views/widgets/Service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/halls_controller.dart';

class HallsView extends GetView<HallsController> {
  const HallsView({Key? key}) : super(key: key);
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
        body: Column(
          children: [
            Container(
              height: 200.h,
              decoration: const  BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider("https://www.arabiaweddings.com/sites/default/files/articles/2020/02/wedding_venues_in_amman.png"), fit: BoxFit.cover)),

              padding:  EdgeInsets.fromLTRB(0, 75.h,0, 0),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: TextWidget(AppStrings.searchlabel,textColor: Colors.white,size: 20.h,weight: FontWeight.bold,)),
                  Center(
                    child: Container(
                        width: size.width*.8 ,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextFieldWidget(
                          hint: AppStrings.search,
                          suffixIcon: Icons.search,
                          onChange: (value){},
                          ltr: true,
                        )
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 20.h),
                      child: TextWidget("Hotel Halls",textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                    ),
                    SizedBox(
                        height: size.height*.23,
                        child:
                        ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const Halls(image: "image");
                          },

                        )
                    ),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 20.h),
                      child: TextWidget("Hotel Halls",textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                    ),
                    SizedBox(
                        height: size.height*.34,
                        child:
                        ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const Halls(image: "image");
                          },

                        )
                    ),
                  ]),
            )
          ],
        )
    );
  }
}
