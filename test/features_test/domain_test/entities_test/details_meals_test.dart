import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/details_meals.dart';

import 'details_meal_test.dart';

class DetailsMealsTest extends DetailsMeals{
  DetailsMealsTest(super.detailsMeals);

}
void main() {
  test('Testing DetailsMeals  class en equality', () {
    DetailsMealTest u = DetailsMealTest(
        strMeal: 'kk',
        strMealThumb: 'dgs',
        idMeal: '5412',
        strCategory: 'gf',
        strArea: 'lkgd',
        strIngredient1: '',
        strIngredient2: '',
        strIngredient3: '',
        strIngredient4: '',
        strIngredient5: '',
        strIngredient6: '',
        strIngredient7: '',
        strIngredient8: '',
        strIngredient9: '',
        strIngredient10: '',
        strIngredient11: '',
        strIngredient12: '',
        strIngredient13: '',
        strIngredient14: '',
        strIngredient15: '',
        strInstructions: '',
        strMeasure1: '',
        strMeasure2: '',
        strMeasure3: '',
        strMeasure4: '',
        strMeasure5: '',
        strMeasure6: '',
        strMeasure7: '',
        strMeasure8: '',
        strMeasure9: '',
        strMeasure10: '',
        strMeasure11: '',
        strMeasure12: '',
        strMeasure13: '',
        strMeasure14: '',
        strMeasure15: '',
        strYoutube: '');
    DetailsMealsTest s1=DetailsMealsTest([u]);
    DetailsMealsTest s2=DetailsMealsTest([u]);

    expect(s1 == s2, true);
  });
}