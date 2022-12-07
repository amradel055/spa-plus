import 'package:get/get.dart';

class FoodItemController extends GetxController {
  final count = 1.obs;
  void increment() => count.value++;
  void decrement() => count.value>1?count.value--:null;
}
