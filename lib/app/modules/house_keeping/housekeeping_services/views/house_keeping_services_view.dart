import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/house_keeping_services_controller.dart';

class HouseKeepingServicesView extends GetView<HouseKeepingServicesController> {
  const HouseKeepingServicesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
   final List<String>HousekeepingItems=["aaaa","vvvvv","fffff"];
    return Scaffold(
        body: Directionality(textDirection: TextDirection.rtl,
          child: Stack(children: [
            Positioned(
              top: 0,
              child: FadeInImage(
                height: size.height*.4, width:size.width,


                fit: BoxFit.cover,
                placeholder: const AssetImage(
                    "assets/images/placeholder.jpeg"),
                image:const NetworkImage(
                    'https://image.shutterstock.com/image-photo/group-friends-professional-cleaners-tiding-260nw-395889778.jpg'),
                // image: NetworkImage(url + "/restaurantItem/itemImage/" + "" ) ,
                imageErrorBuilder: (context, error, StackTrace) {
                  return Image(
                      height: size.height * 0.4,
                      width: size.width,
                      fit: BoxFit.contain,
                      image: const AssetImage(
                          "assets/images/placeholder.jpeg"));
                },
              ),
            ),
            Positioned(
              top: 150,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [const TextWidget('خدمه تنظيف الغرف',weight: FontWeight.bold,size: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(height: size.height*.04,width: size.width*.1,
                            decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white,),
                            child:const Center(child:  TextWidget('4.4',size: 15,))),
                        const TextWidget('مراجعات',size: 20,),
                      ],
                    ),


                  ],),
              ),
            ),
            Positioned(top: 230,
              child: Container(width: size.width,
                decoration:const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(30.00),topRight:Radius.circular(30.00)),
                  color: Colors.white,
                ),
                child: Directionality(textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(size.width*.05, 0,size.width*.05, 0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget('يرجي اختيار الخدمه',weight: FontWeight.bold,textColor: AppColors.appBlue,size: 20,),
                        SizedBox(
                          height: size.height * 0.28,
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              children: [
                                SizedBox(width: size.width,height: size.height*.6,
                                  child: GridView.count(
                                    crossAxisCount: 1,
                                    crossAxisSpacing: 1,
                                    mainAxisSpacing: 0,
                                    childAspectRatio: size.aspectRatio * 15,
                                    children: HousekeepingItems.map((addition) =>
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:const BorderRadius.all( Radius.circular(20.00)),color: Colors.grey[300],
                                          ),
                                          width: size.width*.8,
                                          height: size.height*.1,
                                          child: Center(
                                            child: CheckboxListTile(
                                              title: Text(addition),
                                              value:true,
                                              checkColor: Colors.white,
                                              activeColor: Colors.green,
                                              onChanged: (value) {
                                              },
                                            ),
                                          ),
                                        )).toList(),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              height:size.height * 0.05 ,
                              width: size.width * 0.7,
                              decoration: BoxDecoration(
                                color: AppColors.appHallsRedDark,
                                borderRadius: BorderRadius.all( Radius.circular(size.width * 0.05)),
                              ),
                              child:const TextWidget("استمرار" , textAlign: TextAlign.center,),
                            ),
                          ),
                        ),
                      ],),
                  ),
                ),
              ),
            ),
          ],),
        )
    );
  }
}
