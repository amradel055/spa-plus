
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';


class SpaReservationServices extends StatelessWidget {
  const SpaReservationServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.all(5),
          child: Container(
              height: size.height*.1,
            width: size.width*.9,
              decoration: const BoxDecoration(
                color: AppColors.appGreyDark,
                borderRadius: BorderRadius.all( Radius.circular(10)),
              ),
            child:Row(
              children: [
                ImageWidget(path: 'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg' ,height:  size.height * 0.1,
                  fit: BoxFit.cover,
                  width: size.width * 0.2,),
                Padding(
                    padding:const  EdgeInsets.only(left: 20,top: 8),
                    child: SizedBox(
                      width: size.width*.35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(" _spa!.name!",weight: FontWeight.bold),
                          const TextWidget("_spa!.name!" ,weight: FontWeight.bold)

                        ],
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height:size.height * 0.06 ,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all( Radius.circular(size.width * 0.05)),
                    ),
                    child: const Center(child:  TextWidget("عرض" , textAlign: TextAlign.center,weight: FontWeight.bold)),
                  ),
                ),
              ],
            )
          ),
        )


      ],)
    ;

  }
}
