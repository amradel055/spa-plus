import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/allServices/views/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/all_services_controller.dart';

class AllServicesView extends GetView<AllServicesController> {
  const AllServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 3, 0, 0),
            child: TextWidget(
              AppStrings.hello,
              size: 25.h,
              textColor: AppColors.appBlue,
              weight: FontWeight.bold,
            ),
          ),
          leadingWidth: 300.h,
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.logout,color: Colors.black,),
                        SizedBox(
                          width: 10.h,
                        ),
                        const Text(AppStrings.logout)
                      ],
                    ),
                  ),
                ),
                // popupmenu item 2
              ],
              offset: const Offset(0, 50),
              color: AppColors.black,
              elevation: 2,
            ),
          ],
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(15.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: controller.allServices.length,
          itemBuilder: (context, index) {
            final service = controller.allServices[index];
            return ServiceCard(serviceModel: service);
          },

        ));
  }

}
