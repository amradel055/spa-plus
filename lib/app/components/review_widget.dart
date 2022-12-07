import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10),
      leading: Align(alignment: AlignmentDirectional.topStart,child: ImageWidget(path: AppAssets.cars,fit: BoxFit.cover,isCircle: true,isProfile: true,width: 50,height: 50)),
      title: TextWidget("اسم المستخدم", weight: FontWeight.bold,height: 1),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 2),
          SizedBox(
            child: RatingBar.builder(
              itemBuilder: (BuildContext context, int index) {
                return Icon(Icons.star_rate_rounded);
              },
              itemSize: 15,
              onRatingUpdate: (double value) {  },
              itemCount: 5,
            ),
          ),
          const SizedBox(height: 2),
          const TextWidget("هنا يتم كتابة التعليق المرافق للتقييم يتم كتابة التعليق المرافق للتقييم يتم كتابة التعليق المرافق للتقييم يتم كتابة التعليق المرافق للتقييم ",height: 1.3),
        ],
      ),
    );
  }
}
