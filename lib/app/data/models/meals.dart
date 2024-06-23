class Meals {
  Meals({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });

  final String? strMeal;
  final String? strMealThumb;
  final String? idMeal;

  factory Meals.fromJson(Map<String, dynamic> json) {
    return Meals(
      strMeal: json["strMeal"],
      strMealThumb: json["strMealThumb"],
      idMeal: json["idMeal"],
    );
  }
}
