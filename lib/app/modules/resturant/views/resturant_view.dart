import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resturant_controller.dart';

class ResturantView extends GetView<ResturantController> {
  const ResturantView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(AppStrings.foodService),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ResturantView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
