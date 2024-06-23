import 'package:get/get.dart';

import '../controllers/detail_meals_controller.dart';

class DetailMealsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailMealsController>(
      () => DetailMealsController(),
    );
  }
}
