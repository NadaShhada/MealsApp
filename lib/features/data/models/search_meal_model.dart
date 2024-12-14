import '../../domain/entites/search_meal.dart';

class SearchMealModel extends SearchMeal {
  SearchMealModel(
      {required super.strMeal,
      required super.strMealThumb,
      required super.idMeal});

  factory SearchMealModel.fromJson(Map<String, dynamic> json) {
    return SearchMealModel(
        strMealThumb:json["strMealThumb"], strMeal: json["strMeal"]!, idMeal:json["idMeal"]!);
  }

  Map<String, dynamic> toJson() {
    return {"strMeal": strMeal, "strMealThumb": strMealThumb, "idMeal": idMeal};
  }
}
