import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SpaImage extends StatelessWidget {
  const SpaImage({Key? key, required this.image}) : super(key: key);
  final String image;



  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ImageWidget(path:image ,  height: size.height * .2, width: size.width * .3,fit: BoxFit.fill,radius: 0,),
    );

  }
}