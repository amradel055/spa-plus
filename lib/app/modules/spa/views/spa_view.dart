import 'package:easy_hotel/app/components/text_field_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/spa/views/widgets/Service.dart';
import 'package:easy_hotel/app/modules/spa/views/widgets/offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/spa_controller.dart';

class SpaView extends GetView<SpaController> {
  const SpaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title:  TextWidget('HOME',size: 30.h,),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black87,
                  Colors.black87,
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.6),
                  Colors.transparent
                ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 300.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.salon), fit: BoxFit.cover)),

              padding:  EdgeInsets.fromLTRB(50.h, 175.h,0, 0),
            child:  Column(
              children: [
                Center(
                    child: TextWidget(AppStrings.searchlabel,textColor: Colors.white,size: 20.h,weight: FontWeight.bold,)),
                Row(
                  children: [
                    Container(
                      width: size.width*.8 ,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:
                    const  TextFieldWidget(
                        enabled: true,
                        hint: AppStrings.search,
                        suffixIcon: Icons.search,
                        ltr: true,
                      )


                      ),

                  ],
                )],
            ),


          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 20.h),
                  child: TextWidget(AppStrings.searchlabel,textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                ),
                SizedBox(
                    height: size.height*.34,
                    child:
                    GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                      ),
                      itemCount: 9,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const SpaServicesWidget();
                      },

                    )
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(20.h, 0, 20.h, 0),
                  child: TextWidget(AppStrings.offers,textAlign: TextAlign.left,weight: FontWeight.bold,size: 20.h,),
                ),
                SizedBox(
                    height: size.height*.34,
                    child:
                    ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const SpaOffersWidgets();
                      },

                    )                  )

              ])
        ],
      )
    );
  }
}
