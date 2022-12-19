



import 'package:easy_hotel/app/modules/hotels_search/controller/hotel_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/text_field_widget.dart';
import '../../../components/text_widget.dart';
import '../../../core/values/app_assets.dart';
import '../../../core/values/app_strings.dart';
import '../../../routes/app_pages.dart';
import '../../rooms/rooms_homepage/views/widgets/offer_card.dart';
import '../../rooms/rooms_homepage/views/widgets/towns.dart';

class HotelSearchView extends GetView<HotelSearchController> {
  const HotelSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return  Scaffold(
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
        body: Center(
          child: Container(
            height: 300.h,
            // decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage(AppAssets.rooms), fit: BoxFit.cover)),

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
                          onTap:(){
                          Get.toNamed(Routes.SPASEARCHPAGE);},
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
        )
    );
  }


}