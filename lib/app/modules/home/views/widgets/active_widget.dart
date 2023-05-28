import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/themes/app_text_theme.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';


class ActiveOrdersWidget extends GetView<HomeController> {
  const ActiveOrdersWidget({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: Common.getSpin(),
        );
      }
      return SizedBox(
          width: size.width,
          child: Obx(() {
            return Column(
              children: [
                for(int i = 0; i < controller.activeOrders.length; i ++)
                  OrderContainer(
                    true,
                    controller.activeOrders[i].id.toString() ?? "",
                    controller.activeOrders[i].spaItemName??"",
                    controller.activeOrders[i].salePrice!=0.0?controller.activeOrders[i].salePrice!.toString():controller.activeOrders[i].price!.toString(),
                    controller.activeOrders[i].dueDate??DateTime.now() ,
                    controller.activeOrders[i].name.toString(),
                    controller.activeOrders[i].remark??"لايوجد" ,
                     controller.activeOrders[i].dueTime??DateTime.now(),
                    controller.activeOrders[i].name ?? "",
                    controller.activeOrders[i].phone ?? "لا يوجد",
                    controller.activeOrders[i].customerId.toString(),
                    i,
                    controller.activeOrders[i].startDate??DateTime.now()

                    ,
                    controller.activeOrders[i].finishDate ??DateTime.now()

                    ,






                  ),

              ],
            );
          })
      );
    });
  }

}

