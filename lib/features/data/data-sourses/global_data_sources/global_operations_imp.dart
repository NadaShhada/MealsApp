import 'package:dio/dio.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../../core/services/http_conection.dart';

import 'global_operations.dart';

class GlobalOperationsImp implements GlobalOperations {
  @override
  Future<Map<String, dynamic>> getCategoriesDetails()
    async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiShowCategories,
    queryParameters: {});
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getDetailsMealsByFirstLetter(SearchByFirstLetterParams params)async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiSearching,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getDetailsMealsById(SearchMealByIdParams params)async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiLookingUp,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getDetailsMealsBySearchMeal(SearchMealParams params)async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiSearching,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getMealIngredients(IngredientParams params) async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiListing,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getMealsArea(AreaParams params)async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiListing,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getRandomSearch() async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiRandomSearch,
        queryParameters: {});
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getSearchCategories(CategoryParams params) async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiFiltering,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }

  @override
  Future<Map<String, dynamic>> getSearchMealsByArea(AreaParams params) async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiFiltering,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }
  @override
  Future<Map<String, dynamic>> getSearchMealsByCategory(CategoryParams params)async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiFiltering,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }
  @override
  Future<Map<String, dynamic>> getSearchMealsByIngredient(IngredientParams params) async {
    HttpConnection httpConnection =
    HttpConnection.getInstance(GlobalOperations.baseUrl);
    Response result = await httpConnection.get(GlobalOperations.globalApiFiltering,
        queryParameters: {}..addAll(params.toJson()));
    return result.data;
  }
}
