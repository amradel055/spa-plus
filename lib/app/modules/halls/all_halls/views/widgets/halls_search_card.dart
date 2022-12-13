import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HallsCardWidget extends StatelessWidget {
  const HallsCardWidget({Key? key, required this.type, required this.image, required this.title, required this.subtitle, required this.id, this.onTap}) : super(key: key);
  final int type;
  final int id;
  final String image;
  final String title ;
  final String subtitle ;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            width: size.width*.9,
          height: size.height*.26,
          decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
          Radius.circular(10)),
          color: AppColors.appGreyDark),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius:const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            image),
                        )
                    ),),
                  PositionedDirectional(
                    top: 0,
                    end: 0,
                    child: Container(
                      decoration:
                      BoxDecoration(borderRadius: const BorderRadiusDirectional.only(bottomStart: Radius.circular(AppConstants.radius)), color: Colors.red.withOpacity(.8)),
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: const TextWidget(
                        AppStrings.sale,
                        textDirection: TextDirection.rtl,
                        textColor: Colors.white,
                        weight: FontWeight.bold,
                        children: [TextWidget(" 15 "), TextWidget("%"), TextWidget(" - "), TextWidget(" 2000 "), TextWidget("LE")],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black, Colors.transparent, Colors.transparent],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )),
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Expanded(
                              flex: 2,
                              child: TextWidget(
                                "قاعه الملكه",
                                maxLines: 1,
                                textColor: Colors.white,
                                weight: FontWeight.bold,
                              )),
                          Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget("4.5",textColor: Colors.white,),
                                  Icon(Icons.star_rounded,color: Colors.white,)
                                ],
                              )),
                          const Expanded(
                            child: Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: TextWidget(
                                "40 فرد ",
                                size: 11,
                                textColor: Colors.white,
                                weight: FontWeight.bold,
                                children: [TextWidget(AppStrings.minutes)],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )



                ])     ,
                Padding(
                  padding: const EdgeInsets.fromLTRB(5,0,5,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextWidget("halls.hallName!",weight: FontWeight.bold,size: 15,
                          ),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: Container(
                                    color: AppColors.appHallsRedDark,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          size.width * 0.02,
                                          0,
                                          size.width * 0.02,
                                          0),
                                      child:const TextWidget(
                                        "اجندة الحجوزات",
                                        weight: FontWeight.bold,
                                        textColor: Colors.white,

                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],),

                    ],
                  ),
                ),

              ],
            )
            ,
          ),
        ),
      ),
    );

  }
}