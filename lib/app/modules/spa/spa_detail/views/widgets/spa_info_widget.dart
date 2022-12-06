
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/themes/app_text_theme.dart';

class SpaInfoWidget extends StatelessWidget {
  const SpaInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SizedBox(height: size.height*.6,
    child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
    child: Column(
    children: [Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: [ SizedBox( width: size.width*.9,
    child: ReadMoreText(
    "_spa!.discription!_spa!.discription!_spa!.discription!_spa!.discription!_spa!.discription!_spa!.discription!",

    trimLines: 2,
    colorClickableText: Colors.pink,
    trimMode: TrimMode.Line,
    style: AppTextTheme.contentTextStyle,
    trimCollapsedText: AppStrings.readmore,
    trimExpandedText: AppStrings.readless,
    moreStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),
    )

    )


    ],

    ),
    ),
                Column(
           children: [
                    SizedBox(width: size.width*.8,
                    child: const TextWidget(AppStrings.workhours ,textAlign: TextAlign.start,weight: FontWeight.bold)),
                    SizedBox(width: size.width*.9,

                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                     const CircleAvatar(
                         radius: 5.00,
                         backgroundColor: Colors.green,
                       )
                     ,const TextWidget('السبت - الأحد' ),
                     SizedBox(width: size.width*.2,),
                       const TextWidget('5:00 to 12 pm')
                        ],
                       ),
                       ),
                    SizedBox(width: size.width*.9,

           child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
    const CircleAvatar(
    radius: 5.00,
    backgroundColor: Colors.green,
    )
    ,const TextWidget('السبت - الأحد'),
    SizedBox(width: size.width*.2,),
    const TextWidget('5:00 to 12 pm')
    ],
    ),
    )],),
                SizedBox(
    width: size.width*.8,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const TextWidget(AppStrings.address,weight: FontWeight.bold),
    const TextWidget("_spa!.name!"),
    const TextWidget('الإمارات العربية المتحدة'),
    Row(
    children: [
    Icon(Icons.directions ,size: size.width*.03,color:AppColors.appHallsRedDark,),
    const TextWidget(AppStrings.directions,weight: FontWeight.bold)
    ],
    )


    ],
    ),
    ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
               child: GestureDetector(
                 onTap: (){
                       },
                      child: Container(
                        height:size.height * 0.05 ,
                    width: size.width * 0.7,
                     decoration: BoxDecoration(
                    color: AppColors.appHallsRedDark,
                     borderRadius: BorderRadius.all( Radius.circular(size.width * 0.05)),
                  ),
                   child: const TextWidget("حجــــز" , textAlign: TextAlign.center,weight: FontWeight.bold,),
    ),
    ),
    ),
              ],
              ),
              ),
                 );
  }
}
