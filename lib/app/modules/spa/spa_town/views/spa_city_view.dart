import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/spa/spa_search/views/widgets/spa_search_card.dart';

import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../spa_detail/views/widgets/filter_bar.dart';
import '../controllers/spa_city_controller.dart';



class SpaCityView extends GetView<SpaCityController> {
  const SpaCityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    final row = Container(
      height: size.height*.002,color: AppColors.appHallsRedDark,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appHallsRedDark,
        foregroundColor: Colors.white,
        title:  const  TextFieldWidget(
          enabled: true,
          label: AppStrings.search,
          suffixIcon: Icons.search,
          ltr: true,
          // onSubmitted: Get.toNamed(Routes.SPASEARCHPAGE()),

        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
            child: TextWidget(AppStrings.spas,textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
          ),
          SizedBox(
              height: size.height*.8,
              child:
              ListView.builder(
                itemCount: 22,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const SpaSearchCardWidget( type: 2, image:  'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg', title: 'gggg', subtitle: 'eeee', id: 1,);
                },

              )   ,),


        ],
      )
    );
  }
}
