// ignore_for_file: unnecessary_type_check

import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/data-sourses/global_data_sources/global_operations_imp.dart';
import 'package:themealdb/features/data/models/search_meals_model.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

void main() {
  test('Testing  global SearchMealsByCategory ', () async {
    GlobalOperationsImp global = GlobalOperationsImp();
    Map<String, dynamic> data =
        await global.getSearchMealsByCategory(CategoryParams("Dessert"));

    SearchMealsModel model2 = SearchMealsModel.fromJson(data);
    // print(model2.toJson());
    expect(model2 is SearchMealsModel, true);
  });
}
