
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';


class SpaReservationPackage extends StatelessWidget {
  const SpaReservationPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top:5, bottom: 10),
      child: Container(
        width: size.width*.9,
        height: size.height*.3,
        decoration:const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.00)),color: AppColors.appGreyDark
        ),
        child: Column(
          children:[
            ImageWidget(path: "https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg",width: size.width*.9,
              height: size.height*.18, fit: BoxFit.cover,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget("_spa!.groupName!",weight: FontWeight.bold),
                      const TextWidget("_spa!.name!",weight: FontWeight.bold),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:5, right:10),
                  child: Column(
                    children: [
                      Container(
                        height:size.height * 0.055 ,
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          color:Colors.white ,
                          borderRadius: BorderRadius.all( Radius.circular(size.width * 0.05)),
                        ),
                        child:const Center(child:  TextWidget("إحجز الأن" , textAlign: TextAlign.center,weight: FontWeight.bold,)),
                      ),
                      const TextWidget('250 LE',weight: FontWeight.bold)

                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    )
    ;

  }
}
