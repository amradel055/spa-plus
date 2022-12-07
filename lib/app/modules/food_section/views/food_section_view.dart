import 'package:easy_hotel/app/components/filter_dialog.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/resturant/views/widgets/food_item_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/food_section_controller.dart';

class FoodSectionView extends GetView<FoodSectionController> {
  const FoodSectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(AppStrings.sections),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: AppConstants.pagePadding,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(AppConstants.radius)
            ),
            child: ListTile(
              title: TextWidget("Crown Restaurant - New Cairo"),
              subtitle: TextWidget("Pickup From : New Cairo 90 st."),
              trailing: Icon(Icons.store,color: Colors.black,),
            ),
          ),
          const Divider(height: 0,color: Colors.black87,),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 15, right: 10, bottom: 15),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int i =0 ; i<7;i++)
                  Container(
                    decoration: BoxDecoration (
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(AppConstants.radius)
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                    child: const TextWidget("حلويات", weight: FontWeight.bold,),
                  ) ,
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: AppConstants.pagePadding,
                itemCount: 10,
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(height: 20),
                itemBuilder: (context, index){
                  return const FoodItemCard();
                },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.dialog(FilterDialog()),
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.filter_list_rounded, color: Colors.white),
      ),
    );
  }
}
