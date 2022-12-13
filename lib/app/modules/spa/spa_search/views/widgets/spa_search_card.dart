import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SpaSearchCardWidget extends StatelessWidget {
  const SpaSearchCardWidget({Key? key, required this.type, required this.image, required this.title, required this.subtitle, required this.id, this.onTap}) : super(key: key);
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
      onTap:(){
        if(type == 0) {
          Get.toNamed(Routes.SPACITY, arguments: id);
        } else if(type == 1) {
          Get.toNamed(Routes.SPAHOTEL, arguments: id);
        }else{
          Get.toNamed(Routes.SPADETAILS, arguments: id);
        }
      },
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Row(
            children: [
              ImageWidget(path: image, width: size.width*.15,height: size.height*.07),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(title,size: 15.h,weight:FontWeight.bold,),
                      TextWidget(subtitle,size: 15.h,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(0,0,10.h,0),
                child: Icon(Icons.hide_source,color: Colors.grey[500],),
              )
            ],
          ),
        ),
      ),
    );

  }
}