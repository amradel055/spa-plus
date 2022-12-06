
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/modules/spa/spa_detail/views/widgets/spa_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SpaReviewsWidget extends StatelessWidget {
  const SpaReviewsWidget({Key? key, required this.image}) : super(key: key);
  final String image;

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
        const TextWidget('تم المراجعه بواسطه ٤ اشخاص',weight: FontWeight.bold),

      ],),
      SizedBox(height: size.height*.5,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              for(int i = 0 ; i <= 8 ; i++)
                const SpaReviewWidget(image: 'https://www.wearegurgaon.com/wp-content/uploads/2022/04/Affinity-Salon-Gurgaon.jpg', name: 'wwwww', route: "",)



            ],
          ),
        ),
      ),

    ],)

    ;

  }
}
