import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cars_controller.dart';

class CarsView extends GetView<CarsController> {
  const CarsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CarsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
