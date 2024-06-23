import 'package:get/get.dart';

import '../modules/detail_meals/bindings/detail_meals_binding.dart';
import '../modules/detail_meals/views/detail_meals_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_MEALS,
      page: () => const DetailMealsView(),
      binding: DetailMealsBinding(),
    ),
  ];
}
