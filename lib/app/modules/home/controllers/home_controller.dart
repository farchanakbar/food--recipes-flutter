import 'dart:convert';

import 'package:food_recipes/app/data/models/category.dart';
import 'package:food_recipes/app/data/models/meals.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future<List<Category>> listCategory() async {
    Uri url =
        Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['categories'];
      return data.map((e) => Category.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Meals>> meals() async {
    Uri url = Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/filter.php?a=Canadian');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['meals'];
      return data.map((e) => Meals.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
