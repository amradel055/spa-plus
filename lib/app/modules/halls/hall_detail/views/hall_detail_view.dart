import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/bar_widget.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_images_Widget.dart';

import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_review_widget.dart';

import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/hall_details_controller.dart';


class HallDetailView extends GetView<HallDetailsController> {
  const HallDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [

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
            height: 200.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.halls), fit: BoxFit.cover)),

              padding:  EdgeInsets.fromLTRB(50.h, 120.h,50.h, 20.h),



          ),
          SizedBox(
              height: size.height*.1,
              child:
              ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return   ImageWidget(path: "https://www.arabiaweddings.com/sites/default/files/articles/2020/02/wedding_venues_in_amman.png",radius: 0,);
                },

              )
          ),
          Padding(
            padding:const  EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Row(
              children: [
                Container(color: AppColors.appGreyDark,
                    child: const TextWidget("halls!.name!",weight: FontWeight.bold,size: 15,)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget("halls!.name!",weight: FontWeight.bold,),
                Row(
                  children: [
                    Container(color: AppColors.appHallsRedDark,
                        child: Text("halls!.loyaltyPoints!.toString()",)),
                    Text('مراجعات 1560')

                  ],
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: Container(
              width: size.width*.9,
              height: size.height*.005,
              color: AppColors.appGreyDark,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: Text("halls!.capacity!.toString()"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: Container(
              width: size.width*.9,
              height: size.height*.005,
              color: AppColors.appGreyDark,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: Text('التصميم:${"halls!.name!"}'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: Container(
              width: size.width*.9,
              height: size.height*.005,
              color: AppColors.appGreyDark,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: Text('خدمات القاعة'),
          ),
          SizedBox(
              height: size.height*.4,
              width: size.width * 0.95,

              child: GridView.count(crossAxisCount: 4,
                crossAxisSpacing: size.width * 0.05,
                mainAxisSpacing: size.height * 0.02,
                childAspectRatio: size.aspectRatio * 2,

                children: [
                  for(int i = 0 ; i <= 5; i++)
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: size.width * .2,
                        height: size.height*.2,
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.06,
                              width: size.width * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg'),
                                  )
                              ),
                              // Container(
                              //   width: size.width * .15,
                              //   height: size.height * .06,
                              //   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              //   child: FadeInImage(
                              //     fit: BoxFit.cover,
                              //     placeholder:
                              //     const AssetImage("assets/images/placeholder.jpeg"),
                              //     image: NetworkImage(
                              //         'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg'),
                              //     // image: NetworkImage(url + "/restaurantItem/itemImage/" + "" ) ,
                              //     imageErrorBuilder: (context, error, StackTrace) {
                              //       return Image(
                              //           height: size.height * 0.1,
                              //           width: size.width * .05,
                              //           fit: BoxFit.contain,
                              //           image: const AssetImage(
                              //               "assets/images/placeholder.jpeg"));
                              //     },
                              //   ),
                              // ),
                            ) ,Text(
                              ' شركاتنا',

                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                          ],
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, size.width*.05, 0),
                    child: Text('رؤية المزيد'),
                  ),


                ],
              )),
          Padding(
            padding:  EdgeInsets.fromLTRB(size.width*.05, 0, size.width*.05, 0),
            child: SizedBox(width: size.width*.9,
              child: TextButton(
                onPressed: () {

                },
                child: Text('أجندة الحجوزات'),
                style:ButtonStyle(backgroundColor:MaterialStateProperty.all(AppColors.appHallsRedDark)),

              ),
            ),
          )





        ],
      )
    );
  }

}
