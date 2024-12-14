import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/domain/entites/search_category.dart';

class SearchCategoryTest extends SearchCategory {
  SearchCategoryTest(super.strCategory);

}
void main() {
  test('Testing SearchCategory  class en equality', () {
    SearchCategoryTest s1=SearchCategoryTest("hgd");

    SearchCategoryTest s2=SearchCategoryTest("hgd");


    expect(s1 == s2, true);
  });
}