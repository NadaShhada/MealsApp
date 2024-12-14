import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/meal_ingredient.dart';

class MealIngredientTest extends MealIngredient{
  MealIngredientTest({required super.idIngredient, required super.strIngredient});

}
void main() {
  test('Testing MealIngredient  class en equality', () {
    MealIngredientTest s1 =MealIngredientTest(idIngredient:"jj" ,strIngredient: "ksljfhj");

    MealIngredientTest s2 =MealIngredientTest(idIngredient:"jj" ,strIngredient: "ksljfhj");

    expect(s1 == s2, true);
  });
}