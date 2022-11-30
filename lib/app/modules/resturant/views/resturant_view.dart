import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resturant_controller.dart';

class ResturantView extends GetView<ResturantController> {
  const ResturantView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResturantView'),
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
