import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/models/meal_areas_model.dart';

void main() {
  test('Testing  MealAreasModel   test', () {
    Map<String, dynamic> json = {
      "meals": [
        {"strArea": "American"},
        {"strArea": "British"},
        {"strArea": "Canadian"},
      ]
    };
    MealAreasModel model = MealAreasModel.fromJson(json);
    Map<String, dynamic> newJson = model.toJson();
    expect(const DeepCollectionEquality().equals(json, newJson), true);
  });
}
