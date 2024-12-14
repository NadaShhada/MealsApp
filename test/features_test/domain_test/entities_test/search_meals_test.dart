import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';

import 'search_meal_test.dart';

class SearchMealsTest extends SearchMeals{
  SearchMealsTest(super.searchMeals);

}
void main() {
  test('Testing SearchMeals  class en equality', () {
    SearchMealTest u =SearchMealTest(strMealThumb: "jshf",strMeal:"nvnfh" ,idMeal: "561");
    SearchMealsTest s1 =SearchMealsTest([u]);
    SearchMealsTest s2 =SearchMealsTest([u]);

    expect(s1 == s2, true);
  });
}
