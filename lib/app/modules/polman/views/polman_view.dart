import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/polman_controller.dart';

class PolmanView extends GetView<PolmanController> {
  const PolmanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PolmanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PolmanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
