import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/meal_areas.dart';

import 'meal_area_test.dart';

class MealAreasTest extends MealAreas {
  MealAreasTest(super.mealAreas);
}

void main() {
  test('Testing MealAreas  class en equality', () {
    MealAreaTest u = MealAreaTest("strArea");

    MealAreasTest s1 = MealAreasTest([u]);
    MealAreasTest s2 = MealAreasTest([u]);

    expect(s1 == s2, true);
  });
}
