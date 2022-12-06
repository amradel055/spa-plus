import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class HousekeepingServicesPriceWidget extends StatelessWidget {
  const HousekeepingServicesPriceWidget({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    int index=0;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:const  EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Container(
          height: size.height*.05,
          decoration:const  BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),

          child: Container(
            height: size.height*.3,
            width: size.width,
            decoration:const  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),color: AppColors.appRedLight
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width*.685,
                  height: size.height*.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.00),topRight: Radius.circular(20.00)),color: Colors.grey[300],

                  ),
                  child: const Padding(
                    padding:  EdgeInsets.fromLTRB(0, 0, 10.00, 0),
                    child: Text( "spaItem!.name!",textAlign: TextAlign.right,
                    ),
                  ),
                ),

                Container(
                  color: Colors.grey[300],
                  width: size.width*.1,
                  height: size.height*.09,
                  child: const TextWidget("spaItem.price!.toString()"  + ' LE', textAlign: TextAlign.center,
                  ),
                ),
                Container(
                    width: size.width*.1,
                    height: size.height*.09,
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
