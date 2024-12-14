import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/models/search_categories_model.dart';

void main() {
  test('Testing  SearchCategoriesModel   test', () {
    Map<String, dynamic> json = {
      "meals": [
        {"strCategory": "Beef"},
        {"strCategory": "Breakfast"},
        {"strCategory": "Chicken"},
      ]
    };
    SearchCategoriesModel model = SearchCategoriesModel.fromJson(json);
    Map<String, dynamic> newJson = model.toJson();
    expect(const DeepCollectionEquality().equals(json, newJson), true);
  });
}
