import 'package:easy_hotel/app/components/icon_button_widget.dart';
import 'package:easy_hotel/app/components/image_widget.dart';
import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Get.toNamed(Routes.FOOD_ITEM),
      child: Card(
        elevation: 5,
        shadowColor: Colors.black87,
        child: SizedBox(
          width: double.infinity,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 1.1,
                  child: ImageWidget(
                    path: AppAssets.restraunt,
                    elevation: 3,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: TextWidget(
                              "كفته",
                              weight: FontWeight.bold,
                              maxLines: 1,
                              textColor: Colors.black,
                            )),
                            SizedBox(
                              width: 50,
                              child: IconButtonWidget(
                                icon: Icons.favorite_border_rounded,
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Expanded(
                              child: TextWidget(
                                "15",
                                maxLines: 1,
                                textColor: Colors.black45,
                                showInline: true,
                                children: [
                                  TextWidget(" 14 ", showInline: false, textColor: Colors.black),
                                  TextWidget(AppStrings.LE, textColor: Colors.black),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              child: IconButtonWidget(
                                icon: Icons.add_shopping_cart,
                                iconSize: 25,
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
