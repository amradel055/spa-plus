import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: LayoutBuilder(
        builder: (context,c) {
          final w = c.maxWidth;
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConstants.radius),
            ),
            clipBehavior: Clip.antiAlias,
            // width: 250,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                    child: ImageWidget(
                  path: AppAssets.restraunt,
                  fit: BoxFit.fill,
                  backgroundColor: Colors.black12,
                )),
                PositionedDirectional(
                  top: 0,
                  end: 0,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: const BorderRadiusDirectional.only(bottomStart: Radius.circular(AppConstants.radius)), color: Colors.red.withOpacity(.8)),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    child: TextWidget(
                      AppStrings.sale,
                      size: w * .05,
                      textDirection: TextDirection.rtl,
                      textColor: Colors.white,
                      weight: FontWeight.bold,
                      children: const [TextWidget(" 15 "), TextWidget("%"), TextWidget(" - "), TextWidget(" 2000 "), TextWidget("LE")],
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      colors: [Colors.black, Colors.transparent, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    )),
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 2,
                            child: TextWidget(
                          "كفته",
                          maxLines: 1,
                          size: w * .06,
                          textColor: Colors.white,
                          weight: FontWeight.bold,
                        )),
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextWidget("4.5",textColor: Colors.white,size: w * .05),
                                Icon(Icons.star_rounded,color: Colors.white,size: w * .08)
                              ],
                            )),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: TextWidget(
                              "40-50 ",
                              size: w * .05,
                              textColor: Colors.white,
                              weight: FontWeight.bold,
                              children: const [TextWidget(AppStrings.min)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
