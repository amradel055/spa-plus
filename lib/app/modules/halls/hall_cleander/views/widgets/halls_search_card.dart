import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
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
      child: Center(
        child: SizedBox(
          width: size.width*.9,
          height: size.height*.35,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("halls.hallName!",
              ),
              Text(
                '5star',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    backgroundColor: Colors.black12),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, size.height * 0.01, 0, size.height * 0.01),
                child: Row(children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            image),
                        )
                    ),),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.02, 0, size.width * 0.02, 0),
                    child: SizedBox(
                      width: size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  color: AppColors.appHallsRedDark,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        size.width * 0.02,
                                        0,
                                        size.width * 0.02,
                                        0),
                                    child: Text(
                                      "5/5",
                                    ),
                                  ),
                                ),
                                Text(
                                  "مراجعات: 1560",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "halls.hallName!",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            "السعة :50شخص",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            "واي فاي مجاني",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            "تقديم المشروبات والطعام",

                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
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
                                      child: Text(
                                        "اجندة الحجوزات",

                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(onTap: (){
                                },
                                  child: Text(
                                    "المزيد...",

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              )     ,  Container(color: AppColors.appGreyDark,width: size.width,height: size.height*.002,),
            ],
          )
          ,
        ),
      ),
    );

  }
}