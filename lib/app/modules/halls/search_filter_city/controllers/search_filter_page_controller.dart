import 'package:get/get.dart';

class HallSearchFilterPageController extends GetxController {

  RxInt selectedType = 0.obs;
  final _allItems = [];
  final items = [].obs;
  final int id = Get.arguments;



  changeListType(int newType){
    selectedType(newType);
    items.assignAll(_allItems.where((element) => false));
  }

}
