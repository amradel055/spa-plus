import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/data/model/halls/dto/response/halls_search_response_dto.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HotelSearchCard extends StatelessWidget {
  const HotelSearchCard({Key? key,required this.hotel}) : super(key: key);
  final HotelsearchModel hotel ;


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: GestureDetector(
        onTap:(){
          Get.toNamed(Routes.ALLSERVICES);
        },
        child: Row(
          children: [
            ImageWidget(path: hotel.image!, width: size.width*.15,height: size.height*.07),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(hotel.name!,size: 15.h,weight:FontWeight.bold,),
                    TextWidget(hotel.cityName!,size: 15.h,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}