import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/themes/app_text_theme.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../../components/app_refresh_indecetor.dart';

class ActiveOrdersWidget extends GetView<HomeController> {
  const ActiveOrdersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: Common.getSpin(),
        );
      }
      return SizedBox(
          width: size.width,
          child: AppRefreshIndicator(
            onRefresh: () async => await controller.getActiveOrders(),
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.activeOrders.length,
                padding: const EdgeInsets.all(4),
                dragStartBehavior: DragStartBehavior.start,
                itemBuilder: (context, i) {
                  final order = controller.activeOrders[i] ;
                  return OrderContainer(
                    true,
                    order.id.toString() ?? "",
                    order.spaItemName ?? "",
                    order.salePrice != 0.0
                        ? order.salePrice!.toString()
                        : order.price!.toString(),
                    order.dueDate ?? DateTime.now(),
                    order.name.toString(),
                    order.remark ?? "لايوجد",
                    order.dueTime ?? DateTime.now(),
                    order.name ?? "",
                    order.phone ?? "لا يوجد",
                    order.customerId.toString(),
                    i,
                    order.startDate ?? DateTime.now(),
                    order.finishDate ?? DateTime.now(),
                  );
                },
              );
            }),
          ));
    });
  }
}
