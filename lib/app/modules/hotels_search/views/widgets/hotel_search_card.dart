import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/utils/user_manager.dart';
import 'package:easy_hotel/app/data/model/spa/dto/response/spa_search_response_dto.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HotelSearchCard extends StatelessWidget {
  const HotelSearchCard({Key? key, required this.hotel}) : super(key: key);
  final HotelsearchModel hotel;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GestureDetector(
        onTap: () {
          UserManager().saveSelectedBranch(hotel);
          Get.toNamed(Routes.ALLSERVICES);
        },
        child: Row(
          children: [
            FadeInImage(
              height: size.height * 0.07,
              width: size.width * 0.15,
              fit: BoxFit.cover,
              placeholder: const AssetImage("assets/images/placeholder.jpeg"),
              image: NetworkImage("${ApiProvider.apiUrl}/restaurantItem/itemImage/${hotel.image}",),
              imageErrorBuilder: (context, error, StackTrace) {
                return Image(
                    height: size.height * 0.07,
                    width: size.width * 0.15,
                    fit: BoxFit.contain,
                    image: const AssetImage("assets/images/placeholder.jpeg"));
              },),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(hotel.nameAr!, size: 15.h, weight: FontWeight.bold,),
                    TextWidget(hotel.cityName!, size: 15.h,),
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