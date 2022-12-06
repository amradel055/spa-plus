import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Halls extends StatelessWidget {
  const Halls({Key? key, required this.image, required this.name}) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(onTap: (){
      Get.toNamed(Routes.HOUSEKEEPING_SERVICES);
    },
      child: Container(
        width: size.width * .45,
        height: size.height * .2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(
              10.0)),

        ),

        child: Column(
          children: [
            Container(
              height: size.height * 0.13,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      image),
                  )
              ),

            ), Container(width: size.width*.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,

                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "رؤية المزيد",

                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],),
            )

          ],
        ),
      ),
    );
  }
}
