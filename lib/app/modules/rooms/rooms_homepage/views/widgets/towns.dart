import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TownCard extends StatelessWidget {
  const TownCard({Key? key, required this.image, required this.name, this.onTap}) : super(key: key);
  final String image;
  final String name;
  final Function()? onTap;



  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(onTap: (){
      onTap;
    },
      child: Container(
        width: size.width * .45,
        height: size.height * .2,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(
              10.0)),

        ),

        child: Column(
          children: [
            Container(
              height: size.height * 0.13,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image),
                  )
              ),

            ), SizedBox(width: size.width*.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    name,
                    maxLines: 2,
                    weight: FontWeight.bold,
                  ),
                ],),
            )

          ],
        ),
      ),
    );
  }
}