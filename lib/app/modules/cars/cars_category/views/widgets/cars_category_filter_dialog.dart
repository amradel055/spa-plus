import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/modules/cars/cars_category/controllers/cars_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/values/app_colors.dart';

class CarsCategoryFilterDialog extends GetView<CarsCategoryController> {
  const CarsCategoryFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      title: const Center(
          child: TextWidget(
        "filter",
      )),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          height: size.height,
          width: size.width * .4,
          child: StatefulBuilder(builder: (context, setState) {
            return Column(
              children: [
                Container(
                    height: size.height * .2,
                    child: Column(children: [
                      // for(AdditionsGroupModel add in Additionscars)
                      Column(
                        children: [
                          const TextWidget('car model', textColor: AppColors.appHallsRedDark , size:17 , weight: FontWeight.bold,),
                          SizedBox(
                            width: size.width * .9,
                            height: size.height * .1,
                            child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Wrap(
                                children: [1, 2].map(
                                  (hobby) {
                                    bool isSelected = false;
                                    // if (selectedHobby!.contains(hobby)) {
                                    //   isSelected = true;
                                    // }
                                    return GestureDetector(
                                      onTap: () {
                                      },
                                      child: Container(
                                          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                                            decoration: BoxDecoration(
                                                color: Colors.brown[300],
                                                borderRadius: BorderRadius.circular(18),
                                                border: Border.all(color: isSelected ? Colors.green : Colors.grey, width: 2)),
                                            child: TextWidget(
                                              "BMW",
                                              textColor: isSelected ? Colors.red : Colors.white, size: 14 ,weight: FontWeight.bold,
                                            ),
                                          )),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ])),
                SizedBox(
                  height: size.height * .4,
                  child: Column(
                    children: [
                      const TextWidget(
                        ' السعر',
                        size: 20,
                      ),
                      RangeSlider(
                          values: controller.currentRangeFilterValues.value,
                          max: 5000,
                          divisions: 5000,
                          labels: RangeLabels(
                            controller.currentRangeFilterValues.value.start.round().toString(),
                            controller.currentRangeFilterValues.value.end.round().toString(),
                          ),
                          onChanged: (values) => setState(() => controller.changeRangeValue(values))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Container(
                          width: size.width * .4,
                          height: size.height * .2,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width * .19,
                                height: size.height * .2,
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const TextWidget('من سعر', textColor: Colors.black),
                                        TextWidget(controller.currentRangeFilterValues.value.start.round().toString(), textColor: Colors.black),
                                        const TextWidget(
                                          'جنيها',
                                          textColor: Colors.black,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width * .005,
                                height: size.height * .18,
                                color: Colors.black,
                              ),
                              Container(
                                width: size.width * .19,
                                height: size.height * 2,
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const TextWidget('الي سعر', textColor: Colors.black),
                                        TextWidget(controller.currentRangeFilterValues.value.end.round().toString(), textColor: Colors.black),
                                        const TextWidget('جنيها', textColor: Colors.black),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
      actions: [
        Center(
            child: Container(
          height: size.height * .06,
          width: size.width * .4,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6.00)),
            color: Colors.blueAccent,
          ),
          child: TextButton(
              onPressed: () {},
              child: const Center(
                child: TextWidget("بحث", textColor: Colors.white),
              )),
        )),
      ],
    );
  }
}
