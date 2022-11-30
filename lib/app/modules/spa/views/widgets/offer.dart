import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class SpaOffersWidgets extends StatelessWidget {
  const SpaOffersWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height:  size.height * 0.26,
          width: size.width * 0.7,
          decoration: BoxDecoration(
            border: Border.all(color:AppColors.appGreyDark , width: 1),
            borderRadius: BorderRadius.circular(10),color: AppColors.appGreyLight,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height:  size.height * 0.17,
                decoration:const  BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10) , topRight: Radius.circular(10) ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg')
                    )
                ),

              ),
              const Padding(
                padding:  EdgeInsets.only(right:10),
                child: TextWidget("spa.name!" ,maxLines: 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end ,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const TextWidget('صالون بيلا'),
                        const TextWidget('250 le'),
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
                      child:const TextWidget("حجز" , textAlign: TextAlign.center,),
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
