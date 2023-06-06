import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/user_manager.dart';

class OrderContainer extends GetView<HomeController> {
  const OrderContainer(
      this.showDetails,
      this.num,
      this.carName,
      this.groupName,
      this.date,
      this.road,
      this.remark,
      this.time,
      this.name,
      this.phone,
      this.address,
      this.i,
      this.start,
      this.end,
      {Key? key})
      : super(key: key);
  final bool showDetails;
  final String num;
  final String carName;
  final String groupName;
  final DateTime date;
  final String road;

  final String remark;
  final DateTime time;
  final String name;
  final String phone;
  final String address;
  final int i;
  final DateTime? start;
  final DateTime? end;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
          width: size.width * .95,
          // height: size.height*.1,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: AppColors.appGreyDark,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: size.width * .07,
                  backgroundColor: AppColors.appBlue,
                  child: TextWidget(
                    num.toString(),
                    textColor: Colors.white,
                    weight: FontWeight.bold,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                width: showDetails ? size.width * .55 : size.width * .68,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            name,
                            textColor: AppColors.appBlue,
                            weight: FontWeight.bold,
                            size: 15,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.phone),
                              GestureDetector(
                                  onTap: () {
                                    launch("tel://$phone");
                                  },
                                  child: TextWidget(
                                    phone,
                                    textColor: AppColors.appBlue,
                                    weight: FontWeight.bold,
                                    size: 13,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        TextWidget(
                          carName.toString(),
                          textColor: AppColors.appBlue,
                          weight: FontWeight.bold,
                          size: 13,
                        ),
                        TextWidget(
                          "($groupName)",
                          textColor: AppColors.appBlue,
                          weight: FontWeight.bold,
                          size: 13,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        TextWidget(
                          DateFormat('yyyy.MM.dd').format(date),
                          textColor: AppColors.appBlue,
                          weight: FontWeight.bold,
                          size: 13,
                        ),
                        TextWidget(
                          DateFormat('HH:MM ').format(time).toString(),
                          textColor: AppColors.appBlue,
                          weight: FontWeight.bold,
                          size: 13,
                        )
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     TextWidget(road,textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,)
                    //     ,TextWidget(type==0?"ذهاب":type==1?"عوده":"ذهاب وعوده",textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,),
                    //     const Icon(Icons.person)
                    //     ,TextWidget(seats.toString(),textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,),
                    //
                    //
                    //   ],
                    // ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(
                            "الملاحظات",
                            textColor: AppColors.appBlue,
                            weight: FontWeight.bold,
                            size: 13,
                          ),
                          TextWidget(
                            remark,
                            textColor: AppColors.appBlue,
                            weight: FontWeight.bold,
                            size: 13,
                            maxLines: 100,
                          ),
                        ],
                      ),
                    ),
                    // start==null?const SizedBox():Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     const TextWidget("وقت البدء",textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,)
                    //     ,TextWidget( start==null?"":DateFormat('hh:mm aaa').format(
                    //         start!
                    //     ),textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,maxLines: 100,),
                    //
                    //
                    //   ],
                    // ),end==null?const SizedBox():Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     const TextWidget("وقت الانتهاء",textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,)
                    //     ,TextWidget(end==null?"":DateFormat('hh:mm aaa').format(
                    //         end!
                    //     ),textColor: AppColors.appBlue,weight: FontWeight.bold,size: 13,maxLines: 100,),
                    //
                    //
                    //   ],
                    // ),
                    //
                  ],
                ),
              ),
              // SizedBox(
              //   width: showDetails ?  size.width*.1:size.width*.1,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Row(
              //         children: [
              //           TextWidget(time.toString(),textColor: AppColors.appBlue,weight: FontWeight.bold,size: 18,)
              //
              //         ],
              //       ),
              //
              //     ],
              //   ),
              // ),

              showDetails
                  ? GestureDetector(
                      onTap: () {
                        controller.index.value == 0
                            ? controller.getDeliver(
                                controller.activeOrders[i].id!,
                                UserManager().user!.id,
                                controller.activeOrders[i].customerId!)
                            : controller.getFinishDeliver(
                                controller.deliverdOrders[i].id!,
                                controller.deliverdOrders[i].customerId!);
                        controller.index.value == 0
                            ? controller.getActiveOrders()
                            : controller.getDeliveredOrders();
                        // controller.getDeliveredOrders();
                        // controller.getAllOrders();
                        // controller.getDelyedOrders();
                      },
                      child: Container(
                        height: size.height * .06,
                        width: size.width * .13,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(50.00)),
                          color: controller.index.value == 0
                              ? Colors.green
                              : Colors.red,
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                          children: [
                            TextWidget(
                              controller.index.value == 0
                                  ? "Start"
                                  : "End",
                              weight: FontWeight.bold,
                              textColor: Colors.white,
                            ),
                            // Icon(Icons.shopping_bag,color: Colors.white ),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox()
            ],
          )),
    );
  }
}
