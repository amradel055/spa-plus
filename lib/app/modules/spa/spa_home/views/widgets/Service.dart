import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SpaServicesWidget extends StatelessWidget {
  const SpaServicesWidget({Key? key, required this.name, required this.city, this.onTap, required this.id}) : super(key: key);
  final String name;
  final String city;
  final int id;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){Get.toNamed(Routes.SPADETAILS ,arguments: id);},
      child: SizedBox(
        width: size.width*.15,
        height: size.height*.1,

        child: Column(
          children: [
            Container(
              height:  size.height * 0.07,
              width: size.width * 0.15,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg')
                  )
              ),

            ),
             TextWidget(name,maxLines: 1,weight: FontWeight.bold,)
            , TextWidget(city,maxLines: 1,weight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
