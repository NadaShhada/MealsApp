import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/services/http_conection.dart';
import 'package:themealdb/features/data/data-sourses/global_data_sources/global_operations.dart';
import 'package:themealdb/features/data/models/meal_areas_model.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

void main() {
  test('Testing HttpConnection service ', () async {
    Map<String, dynamic> json = {
      "meals": [
        {"strArea": "American"},
        {"strArea": "British"},
        {"strArea": "Canadian"},
        {"strArea": "Chinese"},
        {"strArea": "Croatian"},
        {"strArea": "Dutch"},
        {"strArea": "Egyptian"},
        {"strArea": "Filipino"},
        {"strArea": "French"},
        {"strArea": "Greek"},
        {"strArea": "Indian"},
        {"strArea": "Irish"},
        {"strArea": "Italian"},
        {"strArea": "Jamaican"},
        {"strArea": "Japanese"},
        {"strArea": "Kenyan"},
        {"strArea": "Malaysian"},
        {"strArea": "Mexican"},
        {"strArea": "Moroccan"},
        {"strArea": "Polish"},
        {"strArea": "Portuguese"},
        {"strArea": "Russian"},
        {"strArea": "Spanish"},
        {"strArea": "Thai"},
        {"strArea": "Tunisian"},
        {"strArea": "Turkish"},
        {"strArea": "Unknown"},
        {"strArea": "Vietnamese"}
      ]
    };
    HttpConnection httpConnection =
        HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(
        GlobalOperations.globalApiListing,
        queryParameters: {}..addAll(AreaParams("list").toJson()));
    MealAreasModel model = MealAreasModel.fromJson(result.data);
    MealAreasModel model2 = MealAreasModel.fromJson(json);

    // print(model.toJson());
    expect(model == model2, true);
  });
}
