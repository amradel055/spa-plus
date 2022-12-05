
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/themes/app_text_theme.dart';

class SpaReservationPrice extends StatelessWidget {
  const SpaReservationPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    int index=0;
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:  EdgeInsets.fromLTRB(size.width*.05, size.height*.003, size.width*.05, 0),
        child: Container(
          height: size.height*.05,
          width: size.width*.8,
          decoration:const  BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),

          child: Container(
            height: size.height*.3,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),color: AppColors.appRedLight
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width*.385,
                  height: size.height*.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.00),topRight: Radius.circular(20.00)),color: Colors.grey[300],

                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10.00, 0),
                    child: Text( "spaItem!.name!",textAlign: TextAlign.right,
                    ),
                  ),
                ),

                Container(
                  color: Colors.grey[300],
                  width: size.width*.3,
                  height: size.height*.05,
                  child: Text("spaItem.price!.toString()"  + ' LE', textAlign: TextAlign.center,
                  ),
                ),
                Container(
                    width: size.width*.1,
                    height: size.height*.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.00),topLeft: Radius.circular(20.00)),
                      color: index==0 ? Colors.green : AppColors.appHallsRedDark,

                    ),

                    child: Icon(index==0 ? Icons.check : Icons.add,color: index==0 ?  Colors.white : Colors.black ,size: size.width*.08)),


              ],

            ),
          ),
        ),
      ),
    );


  }
}
