import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/categories_details.dart';

import 'category_details_test.dart';

class CategoriesDetailsTest extends CategoriesDetails{
  CategoriesDetailsTest(super.categories);

}
void main() {
  test('Testing CategoriesDetails  class en equality', () {

    CategoryDetailsTest u = CategoryDetailsTest(
        strCategory:"fg", strCategoryDescription:"dgfg", strCategoryThumb:"dgfh", idCategory:"gdhfbx");
    CategoriesDetailsTest s1=CategoriesDetailsTest([u]);
    CategoriesDetailsTest s2=CategoriesDetailsTest([u]);

    expect(s1 == s2, true);
  });
}