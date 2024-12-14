import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/meal_ingredients.dart';

import 'meal_ingredient_test.dart';

class MealIngredientsTest extends MealIngredients{
  MealIngredientsTest(super.mealIngredients);

}
void main() {
  test('Testing MealIngredients  class en equality', () {
    MealIngredientTest u =MealIngredientTest(idIngredient:"jj" ,strIngredient: "ksljfhj");

    MealIngredientsTest s1 =MealIngredientsTest([u]);
    MealIngredientsTest s2 =MealIngredientsTest([u]);

    expect(s1 == s2, true);
  });
}