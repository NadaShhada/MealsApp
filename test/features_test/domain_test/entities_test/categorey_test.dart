import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/category_details.dart';

class CategoryTest extends CategoryDetails {
  CategoryTest({required super.idCategory,
    required super.strCategory,
    required super.strCategoryThumb,
    required super.strCategoryDescription});
}

void main() {
  test('Testing category  class en equality', () {
    CategoryTest s1 = CategoryTest(
        idCategory: '542',
        strCategory:"m",
        strCategoryThumb:"k", strCategoryDescription:"hjg");
    CategoryTest s2 = CategoryTest(
        idCategory: '542',
        strCategory:"m",
        strCategoryThumb:"k", strCategoryDescription:"hjg");
    expect(s1 == s2, true);
  });
}
