import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/house_keeping_controller.dart';

class HouseKeepingView extends GetView<HouseKeepingController> {
  const HouseKeepingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HouseKeepingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HouseKeepingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
