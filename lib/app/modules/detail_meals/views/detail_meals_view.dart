import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_meals_controller.dart';

class DetailMealsView extends GetView<DetailMealsController> {
  const DetailMealsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailMealsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailMealsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
