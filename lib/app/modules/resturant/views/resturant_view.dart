import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resturant_controller.dart';
import 'widgets/food_section_card.dart';
import 'widgets/offer_card.dart';

class ResturantView extends GetView<ResturantController> {
  const ResturantView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(AppStrings.foodService),
        centerTitle: true,
      ),
      body: ListView(
        padding: AppConstants.pagePadding,
        children: [
          Transform.scale(
            scaleX: 1.1,
            child: CarouselSlider.builder(
              itemCount: 5,
              options: CarouselOptions(
                height: 150,
                viewportFraction: 0.85,
                enableInfiniteScroll: true,
                pageSnapping: true,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context,_, index){
                return ImageWidget(path: "assets/images/slider.jpg",fit: BoxFit.fill,);
              },
            ),
          ),
          const SizedBox(height: 20),
          const TextWidget(AppStrings.todayOffers,weight: FontWeight.bold,size: 18),
          const SizedBox(height: 10),
          Transform.scale(
            scaleX: 1.1,
            child: SizedBox(height: 150,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: AppConstants.padding),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index){
                  return const OfferCard();
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          const TextWidget(AppStrings.sections,weight: FontWeight.bold,size: 18),
          const SizedBox(height: 10),
          for(int i=0;i<10;i++)
            const FoodSectionCard(),
        ],
      ),
    );
  }
}
