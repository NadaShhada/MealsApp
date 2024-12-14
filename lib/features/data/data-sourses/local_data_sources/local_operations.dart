import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../domain/entites/categories_details.dart';
import '../../../domain/entites/details_meals.dart';
import '../../../domain/entites/meal_areas.dart';
import '../../../domain/entites/meal_ingredients.dart';
import '../../../domain/entites/search_categories.dart';
import '../../../domain/entites/search_meals.dart';

abstract class LocalOperations {
  Future<void> storeListAreas(AreaParams params, MealAreas model);

  Future<MealAreas?> restoreListAreas(AreaParams params);

  Future<void> storeListCategories(CategoryParams params, SearchCategories model);

  Future<SearchCategories?> restoreListCategories(CategoryParams params);

  Future<void> storeListIngredients(IngredientParams params, MealIngredients model);

  Future<MealIngredients?> restoreListIngredients(IngredientParams params);

  Future<void> storeSearchByIngredients(IngredientParams params, SearchMeals model);

  Future<SearchMeals?> restoreSearchByIngredients(IngredientParams params);

  Future<void> storeSearchByCategories(CategoryParams params, SearchMeals model);

  Future<SearchMeals?> restoreSearchByCategories(CategoryParams params);

  Future<void> storeSearchByArea(AreaParams params, SearchMeals model);

  Future<SearchMeals?> restoreSearchByArea(AreaParams params);

  Future<void> storeSearchMeal(SearchMealParams params, DetailsMeals model);

  Future<DetailsMeals?> restoreSearchMeal(SearchMealParams params);

  Future<void> storeSearchByFirstLetter(SearchByFirstLetterParams params, DetailsMeals model);

  Future<DetailsMeals?> restoreSearchByFirstLetter(SearchByFirstLetterParams params);

  Future<void> storeSearchMealById(SearchMealByIdParams params, DetailsMeals model);

  Future<DetailsMeals?> restoreSearchMealById(SearchMealByIdParams params);



  Future<void> storeListCategoriesDetails(CategoriesDetails model);

  Future<CategoriesDetails?> restoreListCategoriesDetails();
}
