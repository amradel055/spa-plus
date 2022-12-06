import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/modules/cars/cars_order/views/widgets/cars_order_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class CarsOrderView extends StatelessWidget {
  const CarsOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Scaffold(
      appBar: CarsOrderAppbar(size.height * 0.4),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          height: size.height * 0.65,
          width: size.width,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextWidget("كم عدد الاشخاص ؟"  , textColor: Colors.blue,size: 17, weight: FontWeight.bold,),
                Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width * 0.03),
                      color: AppColors.appRedLight
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Center(
                      child: Column(
                        children: [
                          RatingBar.builder(
                            initialRating: 1,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 4,
                            itemSize: size.width * 0.1,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                            itemBuilder: (context, _) =>
                            const Icon(
                              Icons.person,
                              color: Colors.redAccent,
                            ),
                            onRatingUpdate: (rating) {

                            },
                          ),
                          const TextWidget("4" +  " اشخاص"    , textColor: Colors.grey, size: 16, weight: FontWeight.w600,),

                        ],
                      ),
                    ),
                  ),
                ),
                const TextWidget("نوع السياره التي تم اختيارها"  , textColor :Colors.blue, size: 17, weight: FontWeight.bold,),
                 TextWidget('_car.name!'  , textColor: Colors.red[900]!, size: 17, weight: FontWeight.bold,),
                Container(
                  width: size.width * .9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black , width: 1),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.11,
                        height: size.height* 0.1,
                        child: Center(
                          child: Checkbox(
                            activeColor: Colors.red[900],
                            value: true,
                            onChanged: (bool? value) {  },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.38,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget('_car.name!' , textColor:Colors.red[900]! , maxLines: 1, weight: FontWeight.bold, size: 15,),
                            const TextWidget( '100' + "LE/day" , textColor:Colors.blue , maxLines: 1,weight: FontWeight.bold, size: 15,),
                            SizedBox(
                              width: size.width * 0.45,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextWidget("seats" , textColor:Colors.blue, maxLines: 1,weight: FontWeight.bold, size: 15,),
                                  Icon(Icons.person , color:Colors.blue , size: size.width * 0.05,),
                                  const TextWidget("4" , textColor:Colors.blue  , maxLines: 1,weight: FontWeight.bold, size: 15,),
                                  const TextWidget("+" , textColor:Colors.blue,  maxLines: 1,weight: FontWeight.bold, size: 15,),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.4,
                        child:
                        // _car.image != null ?
                        FadeInImage(
                          height: size.height * 0.15,
                          width: size.width * 0.45,
                          fit: BoxFit.cover,
                          placeholder: const AssetImage("assets/images/placeholder.jpeg"),
                          image: const NetworkImage('url' + "/restaurantItem/itemImage/" + '_car.image!' ,) ,
                          imageErrorBuilder: (context, error, StackTrace) {
                            return Image(
                                height: size.height * 0.1,
                                width: size.width,
                                fit: BoxFit.contain,
                                image: const AssetImage("assets/images/placeholder.jpeg"));
                          },)
                              // : const SizedBox(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: size.width * 0.4 ,
                        child: OutlinedButton(
                            onPressed: (){
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                            ),
                            child: const TextWidget("احجز الان"   , textColor:Colors.white,weight: FontWeight.bold, size: 15,)),
                      ),
                      SizedBox(
                        child: OutlinedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            child: const TextWidget("القائمة الرئيسيه"   , textColor: Colors.redAccent , weight: FontWeight.bold, size: 15,)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
