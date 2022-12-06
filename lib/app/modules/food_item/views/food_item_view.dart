import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_hotel/app/components/icon_button_widget.dart';
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/food_item_controller.dart';

class FoodItemView extends GetView<FoodItemController> {
  const FoodItemView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('كفته'),
        // centerTitle: true,
        actions: [
          UnconstrainedBox(
            child: IconButtonWidget(
              icon: Icons.favorite_border_rounded,
              onPressed: (){},
            ),
          ),
          const SizedBox(width: 5),
          UnconstrainedBox(
            child: IconButtonWidget(
              icon: Icons.add_shopping_cart_rounded,
              onPressed: (){},
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: 5,
            options: CarouselOptions(
              height: 200,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              pageSnapping: true,
              // enlargeCenterPage: true,
            ),
            itemBuilder: (context,_, index){
              return ImageWidget(path: AppAssets.restraunt,fit: BoxFit.fill,width: context.width,radius: 0);
            },
          ),
          Padding(
            padding: AppConstants.pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(AppStrings.description,weight: FontWeight.bold,children: [TextWidget(":")],),
                TextWidget("هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
