import 'package:easy_hotel/app/core/values/app_assets.dart';
import 'package:easy_hotel/app/modules/allServices/services_model.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AllServicesController extends GetxController {

List<ServiceModel> allServices=[
  ServiceModel(name: 'SPA Service', image: AppAssets.spa, pageRoute: Routes.SPA),
  ServiceModel(name: 'Food Service', image: AppAssets.restraunt, pageRoute: Routes.RESTURANT),
  ServiceModel(name: 'Halls Service', image: AppAssets.halls, pageRoute: Routes.HALLS),
  ServiceModel(name: 'HouseKeeping Service', image: AppAssets.housekeeping, pageRoute: Routes.HOUSE_KEEPING),
  ServiceModel(name: 'Rooms Service', image: AppAssets.rooms, pageRoute: Routes.ROOMS),
  ServiceModel(name: 'Polman Service', image: AppAssets.polman, pageRoute: Routes.POLMAN),
  ServiceModel(name: 'Cars Service', image: AppAssets.cars  , pageRoute: Routes.CARS)
];
}
