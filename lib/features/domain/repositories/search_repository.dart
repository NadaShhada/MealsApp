import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';

import '../entites/categories_details.dart';
import '../entites/details_meals.dart';
import '../entites/meal_areas.dart';
import '../entites/meal_ingredients.dart';
import '../entites/search_categories.dart';
import '../entites/search_meals.dart';

abstract class SearchRepository {
  Future<Either<MealAreas, String>> listAreas(AreaParams params);

  Future<Either<SearchCategories, String>> listCategories( CategoryParams params);

  Future<Either<MealIngredients, String>> listIngredients( IngredientParams params);

  Future<Either<SearchMeals, String>> searchByIngredients(IngredientParams params);

  Future<Either<SearchMeals, String>> searchByCategories(CategoryParams params);

  Future<Either<SearchMeals, String>> searchByArea(AreaParams params);

  Future<Either<DetailsMeals, String>> searchMeal(SearchMealParams  params);

  Future<Either<DetailsMeals, String>> searchByFirstLetter(SearchByFirstLetterParams params);

  Future<Either<DetailsMeals, String>> searchMealById(SearchMealByIdParams params);

  Future<Either<DetailsMeals, String>> randomMeals();

  Future<Either<CategoriesDetails, String>> listCategoriesDetails();
}
