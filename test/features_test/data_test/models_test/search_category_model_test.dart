import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/models/search_category_model.dart';

void main() {
  test('Testing  SearchCategoryModel   test', () {
    Map<String, String> json = {"strCategory": "Beef"};
    SearchCategoryModel model = SearchCategoryModel.fromJson(json);
    Map<String, dynamic> newJson = model.toJson();
    expect(const DeepCollectionEquality().equals(json, newJson), true);
  });
}
