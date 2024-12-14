import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/search_meal.dart';

class SearchMealTest extends SearchMeal{
  SearchMealTest({required super.strMeal, required super.strMealThumb, required super.idMeal});

}
void main() {
test('Testing SearchMeal  class en equality', () {
SearchMealTest s1 =SearchMealTest(strMealThumb: "jshf",strMeal:"nvnfh" ,idMeal: "561");
SearchMealTest s2=SearchMealTest(strMealThumb: "jshf",strMeal:"nvnfh" ,idMeal: "561");

expect(s1 == s2, true);
});
}
