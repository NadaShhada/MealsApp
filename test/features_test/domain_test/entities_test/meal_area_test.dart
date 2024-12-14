import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/meal_area.dart';

class MealAreaTest extends MealArea{
  MealAreaTest(super.strArea);

}
void main() {
  test('Testing MealArea  class en equality', () {
    MealAreaTest s1=MealAreaTest("strArea");

    MealAreaTest s2=MealAreaTest("strArea");


    expect(s1 == s2, true);
  });
}