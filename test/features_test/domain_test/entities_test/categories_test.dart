import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/categories_details.dart';

import 'categorey_test.dart';

class CategoriesTest extends CategoriesDetails {
  CategoriesTest(super.categories);
}

void main() {
  test('Testing categories class en equality', () {
    CategoryTest u = CategoryTest(
        idCategory: '542',
        strCategory: "m",
        strCategoryThumb: "k",
        strCategoryDescription: "hjg");
    CategoriesTest s1 = CategoriesTest([u]);
    CategoriesTest s2 = CategoriesTest([u]);

    expect(s1 == s2, true);
  });
}
