import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/search_categories.dart';

import 'search_category_test.dart';

class SearchCategoriesTest extends SearchCategories{
  SearchCategoriesTest(super.mealsCategory);
}
void main() {
  test('Testing SearchCategories  class en equality', () {
    SearchCategoryTest u=SearchCategoryTest("hgd");
    SearchCategoriesTest s1=SearchCategoriesTest([u]);
    SearchCategoriesTest s2=SearchCategoriesTest([u]);



    expect(s1 == s2, true);
  });
}