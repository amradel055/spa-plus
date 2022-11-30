import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/halls_controller.dart';

class HallsView extends GetView<HallsController> {
  const HallsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HallsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HallsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
