import 'package:themealdb/features/domain/usecases/listing_areas.dart';

abstract class GlobalOperations {
  static const String baseUrl = "https://www.themealdb.com/api/json/v1/1/";
  static const String globalApiListing = "list.php";
  static const String globalApiFiltering = "filter.php";
  static const String globalApiSearching = "search.php";
  static const String globalApiLookingUp = "lookup.php";
  static const String globalApiRandomSearch = "random.php";
  static const String globalApiShowCategories = "categories.php";

  Future<Map<String, dynamic>> getMealsArea(AreaParams params);

  Future<Map<String, dynamic>> getSearchCategories(CategoryParams params);

  Future<Map<String, dynamic>> getMealIngredients(IngredientParams params);

  Future<Map<String, dynamic>> getSearchMealsByIngredient(
      IngredientParams params);

  Future<Map<String, dynamic>> getSearchMealsByCategory(CategoryParams params);

  Future<Map<String, dynamic>> getSearchMealsByArea(AreaParams params);

  Future<Map<String, dynamic>> getDetailsMealsBySearchMeal(
      SearchMealParams params);

  Future<Map<String, dynamic>> getDetailsMealsByFirstLetter(
      SearchByFirstLetterParams params);

  Future<Map<String, dynamic>> getDetailsMealsById(SearchMealByIdParams params);
  Future<Map<String, dynamic>> getRandomSearch();
  Future<Map<String, dynamic>> getCategoriesDetails();


}
