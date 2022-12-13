
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/controllers/spa_details_controller.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';


class SpaReviewsWidget extends GetView<SpaDetailsController> {
  const SpaReviewsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return    Column(children: [
      Column(children: [
        const TextWidget('3.00',weight: FontWeight.bold),

        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          ignoreGestures: true,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
          },
        ),
        Row(
          children: [
            const TextWidget('تم المراجعه بواسطه ',weight: FontWeight.bold),
             TextWidget(controller.spa!.reviewDtoList!.length.toString(),weight: FontWeight.bold),
            const TextWidget('اشخاص',weight: FontWeight.bold),


          ],
        )


      ],),
      SizedBox(height: size.height*.5,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              for(int i = 0 ; i < controller.spa!.reviewDtoList!.length ; i++)
                 SpaReviewWidget(image: 'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg', name: controller.spa!.reviewDtoList![i].customerName!, route: "",date: controller.spa!.reviewDtoList![i].reviewDate!.toString(),)



            ],
          ),
        ),
      ),

    ],);  }

}
