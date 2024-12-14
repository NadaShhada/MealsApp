import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/models/search_meals_model.dart';

void main() {
  test('Testing  SearchMealsModel   test', () {
    Map<String, dynamic> json = {
      "meals": [
        {
          "strMeal": "BeaverTails",
          "strMealThumb":
              "https://www.themealdb.com/images/media/meals/ryppsv1511815505.jpg",
          "idMeal": "52928"
        },
        {
          "strMeal": "Breakfast Potatoes",
          "strMealThumb":
              "https://www.themealdb.com/images/media/meals/1550441882.jpg",
          "idMeal": "52965"
        },
      ]
    };
    SearchMealsModel model = SearchMealsModel.fromJson(json);
    Map<String, dynamic> newJson = model.toJson();
    expect(const DeepCollectionEquality().equals(json, newJson), true);
  });
}
