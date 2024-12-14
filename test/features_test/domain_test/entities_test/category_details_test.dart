import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/category_details.dart';

class CategoryDetailsTest extends CategoryDetails {
  CategoryDetailsTest(
      {required super.strCategory, required super.idCategory, required super.strCategoryThumb, required super.strCategoryDescription});

}

void main() {
  test('Testing CategoryDetails  class en equality', () {
    CategoryDetailsTest s1 = CategoryDetailsTest(
        strCategory:"fg", strCategoryDescription:"dgfg", strCategoryThumb:"dgfh", idCategory:"gdhfbx");
    CategoryDetailsTest s2 = CategoryDetailsTest(
        strCategory:"fg", strCategoryDescription:"dgfg", strCategoryThumb:"dgfh", idCategory:"gdhfbx");
    expect(s1 == s2, true);
  });
}