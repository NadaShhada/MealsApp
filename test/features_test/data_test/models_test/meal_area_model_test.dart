import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/models/meal_area_model.dart';

void main() {
  test('Testing  MealAreaModel   test', () {
    Map<String, dynamic> json = {"strArea": "American"};
    MealAreaModel model = MealAreaModel.fromJson(json);
    Map<String, dynamic> newJson = model.toJson();
    expect(const DeepCollectionEquality().equals(json, newJson), true);
  });
}
