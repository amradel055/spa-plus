import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/all_orders_widget.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/delayed_order_widget.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/delivered_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'widgets/filter_bar.dart';
import 'widgets/active_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          title: TextWidget(
            AppStrings.spaService,
            size: 30.h,
            textColor: Colors.white,
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black87,
              Colors.black87,
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.6),
              Colors.transparent
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.spa), fit: BoxFit.cover)),

              // padding: EdgeInsets.fromLTRB(0, 75.h, 0, 0),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.stretch,
              //   children: [
              //     Center(child: TextWidget(
              //       "Search For Order", textColor: Colors.white,
              //       size: 20.h,
              //       weight: FontWeight.bold,)),
              //     Center(
              //       child: SizedBox(
              //           width: size.width * .8,
              //           child: TextFieldWidget(
              //             label: AppStrings.search,
              //             suffixIcon: Icons.search,
              //             onChange: (value) {
              //               controller.filter(value);
              //             },
              //             ltr: true,
              //           )
              //       ),
              //     ),
              //   ],
              // ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterBarWidgets(
                  title: AppStrings.active,
                  index: 0,
                ),
                FilterBarWidgets(
                  title: "تم البدء",
                  index: 1,
                ),
                FilterBarWidgets(
                  title: AppStrings.done,
                  index: 2,
                ),
                FilterBarWidgets(title: AppStrings.allorders, index: 3)
              ],
            ),
            Container(
              height: size.height * .002,
              color: AppColors.appBlue,
            ),
            Obx(() {
              if (controller.isLoading.value) {
                return Center(
                  child: Common.getSpin(),
                );
              }
              return [
                const ActiveOrdersWidget(),
                const DeliveredOrdersWidget(),
                const DelayedOrdersWidget(),
                const AllOrdersWidget(),
              ][controller.index.value];
            })
          ],
        ));
  }
}
