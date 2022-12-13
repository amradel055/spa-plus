import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_hotel/app/components/icon_button_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/house_keeping/housekeeping_reservation/views/widgets/timer.dart';
import 'package:easy_hotel/app/modules/house_keeping/housekeeping_services/views/widgets/price_services.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/house_keeping_reservation_controller.dart';

class HouseKeepingReservationView
    extends GetView<HouseKeepingReservationController> {
  const HouseKeepingReservationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            height: size.height * .4,
            right: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider('https://image.shutterstock.com/image-photo/group-friends-professional-cleaners-tiding-260nw-395889778.jpg'),fit: BoxFit.fill
                )
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: UnconstrainedBox(
                      child: IconButtonWidget(
                        icon: Icons.arrow_forward_ios,
                        onPressed: () => Get.back(),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const TextWidget(
                    AppStrings.housekeepingService,
                    weight: FontWeight.bold,
                    size: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: size.height * .04,
                          width: size.width * .1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: const Center(
                              child: TextWidget(
                                '4.4',
                                size: 15,
                                weight: FontWeight.bold,

                              ))),
                      const TextWidget(
                        'مراجعات',
                        weight: FontWeight.bold,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * .33,
            child: Container(
              width: size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.00),
                    topRight: Radius.circular(30.00)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                      'يرجي تحديد الموعد..',
                      weight: FontWeight.bold,
                      textColor: AppColors.appBlue,
                      size: 20,
                    ),
                    TableCalendar(
                      calendarStyle:const CalendarStyle(todayDecoration: BoxDecoration(color:  AppColors.appHallsRedDark, shape: BoxShape.rectangle,borderRadius: BorderRadius.all(Radius.circular(10))),),
                       daysOfWeekVisible : false,
                       pageJumpingEnabled : true,
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      rowHeight: 40,
                    ),
                    Container(
                      height: size.height * .1,
                      width: size.width * .9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget('الوقت',weight: FontWeight.bold,),
                          Container(
                              width: size.width * .7,
                              height: size.height * .07,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all((Radius.circular(15))),
                                color: Colors.grey[300],
                              ),
                              child: Center(child: TimerWidget()))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            controller.getHousekeepingSave();
                          },
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width * 0.4,
                            decoration:const BoxDecoration(
                              color: AppColors.appHallsRedDark,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const TextWidget(
                              AppStrings.reserve,
                              textAlign: TextAlign.center,
                              weight: FontWeight.bold,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
