import 'package:get/get.dart';

import '../modules/allServices/bindings/all_services_binding.dart';
import '../modules/allServices/views/all_services_view.dart';
import '../modules/cars/bindings/cars_binding.dart';
import '../modules/cars/views/cars_view.dart';
import '../modules/halls/bindings/halls_binding.dart';
import '../modules/halls/views/halls_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/house_keeping/bindings/house_keeping_binding.dart';
import '../modules/house_keeping/views/house_keeping_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/polman/bindings/polman_binding.dart';
import '../modules/polman/views/polman_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/resturant/bindings/resturant_binding.dart';
import '../modules/resturant/views/resturant_view.dart';
import '../modules/rooms/bindings/rooms_binding.dart';
import '../modules/rooms/views/rooms_view.dart';
import '../modules/spa/bindings/spa_binding.dart';
import '../modules/spa/views/spa_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ALLSERVICES,
      page: () => const AllServicesView(),
      binding: AllServicesBinding(),
    ),
    GetPage(
      name: _Paths.SPA,
      page: () => const SpaView(),
      binding: SpaBinding(),
    ),
    GetPage(
      name: _Paths.RESTURANT,
      page: () => const ResturantView(),
      binding: ResturantBinding(),
    ),
    GetPage(
      name: _Paths.HALLS,
      page: () => const HallsView(),
      binding: HallsBinding(),
    ),
    GetPage(
      name: _Paths.CARS,
      page: () => const CarsView(),
      binding: CarsBinding(),
    ),
    GetPage(
      name: _Paths.HOUSE_KEEPING,
      page: () => const HouseKeepingView(),
      binding: HouseKeepingBinding(),
    ),
    GetPage(
      name: _Paths.ROOMS,
      page: () => const RoomsView(),
      binding: RoomsBinding(),
    ),
    GetPage(
      name: _Paths.POLMAN,
      page: () => const PolmanView(),
      binding: PolmanBinding(),
    ),
  ];
}
