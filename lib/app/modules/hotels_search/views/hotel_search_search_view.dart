import 'package:easy_hotel/app/modules/hotels_search/controller/hotel_search_controller.dart';
import 'package:easy_hotel/app/modules/hotels_search/views/widgets/hotel_search_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../components/text_field_widget.dart';
import '../../../components/text_widget.dart';
import '../../../core/values/app_colors.dart';
import '../../../core/values/app_strings.dart';


class HotelSearchSearchView extends GetView<HotelSearchController> {
  const HotelSearchSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    final row = Container(
      height: size.height * .002, color: AppColors.appHallsRedDark,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appHallsRedDark,
        foregroundColor: Colors.white,
        title: Obx(() {
          return TextFieldWidget(
            enabled: true,
            controller: controller.searchController.value,
            hint: AppStrings.searchHotelForService,
            suffixIcon: Icons.search,
            focusNode: controller.searchFocusNode.value,
            ltr: true,
            onChange: (_) => controller.searchHotelForServices(),
          );
        }),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          row,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
                child: TextWidget(AppStrings.hotels, textAlign: TextAlign.left, weight: FontWeight.bold, size: 20.h,),
              ),
              Obx(() {
                final hotelList = controller.hotelsList.value ;
                return SizedBox(
                  height: size.height * .8,
                  child:
                  ListView.builder(
                    itemCount: hotelList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return  HotelSearchCard(hotel: hotelList[index],);
                    },

                  ),);
              }),
            ],
          ),


        ],
      ),
    );
  }
}
