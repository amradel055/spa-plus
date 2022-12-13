import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../routes/app_pages.dart';

class SpaOffersWidgets extends StatelessWidget {
  const SpaOffersWidgets({Key? key, required this.image, required this.name, this.onTap, this.hotel, this.city, this.id}) : super(key: key);
 final String ?image;
 final String? name;
  final String? hotel;
  final String? city;
  final int? id;
  final Function()? onTap;



  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Get.toNamed(Routes.SPADETAILS ,arguments: id);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height:  size.height * 0.26,
          width: size.width * 0.7,
          decoration: BoxDecoration(
            border: Border.all(color:Colors.grey[500]! , width: 1),
            borderRadius: BorderRadius.circular(10),color: AppColors.appGreyDark,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height:  size.height * 0.17,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10) ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            image!)
                    )
                ),

              ),
               Padding(
                padding:  const EdgeInsets.only(right:10),
                child: TextWidget(hotel! ,maxLines: 1,weight: FontWeight.bold,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end ,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                         TextWidget(name!,weight: FontWeight.bold),
                         TextWidget(city!,weight: FontWeight.bold),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      height:size.height * 0.05 ,
                      width: size.width * 0.2,
                      decoration:const BoxDecoration(
                          color: AppColors.appHallsRedDark,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10) , bottomLeft: Radius.circular(10))
                      ),
                      child:const TextWidget("حجز" , textAlign: TextAlign.center,weight: FontWeight.bold,textColor: Colors.white,),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
