import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/models/search_meal_model.dart';

void main() {
  test('Testing  SearchMealModel   test', () {
    Map<String, String> json = {
      "strMeal": "Apam balik",
      "strMealThumb":
          "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg",
      "idMeal": "53049"
    };
    SearchMealModel model = SearchMealModel.fromJson(json);
    Map<String, dynamic> newJson = model.toJson();
    expect(const DeepCollectionEquality().equals(json, newJson), true);
  });
}
