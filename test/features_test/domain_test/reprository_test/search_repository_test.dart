import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/categories_details.dart';
import 'package:themealdb/features/domain/entites/details_meals.dart';
import 'package:themealdb/features/domain/entites/meal_areas.dart';
import 'package:themealdb/features/domain/entites/meal_ingredients.dart';
import 'package:themealdb/features/domain/entites/search_categories.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/repositories/search_repository.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../entities_test/details_meal_test.dart';
import '../entities_test/details_meals_test.dart';
import '../entities_test/meal_area_test.dart';
import '../entities_test/meal_areas_test.dart';
import '../entities_test/meal_ingredient_test.dart';
import '../entities_test/meal_ingredients_test.dart';
import '../entities_test/search_categories_test.dart';
import '../entities_test/search_category_test.dart';
import '../entities_test/search_meal_test.dart';
import '../entities_test/search_meals_test.dart';

class SearchRepositoryTest implements SearchRepository {
  @override
  Future<Either<MealAreas, String>> listAreas(AreaParams params) async {
    if (params.a == "Batman") {
      return Either(data: MealAreasTest([MealAreaTest("strArea")]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<SearchCategories, String>> listCategories(
      CategoryParams params) async {
    if (params.c == "Batman") {
      return Either(data: SearchCategoriesTest([SearchCategoryTest("hgd")]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<CategoriesDetails, String>> listCategoriesDetails() async {
    // ignore: todo
    // TODO: implement listIngredients
    throw UnimplementedError();
  }

  @override
  Future<Either<MealIngredients, String>> listIngredients(
      IngredientParams params) async {
    if (params.i == "Batman") {
      return Either(
          data: MealIngredientsTest([
        MealIngredientTest(idIngredient: "jj", strIngredient: "ksljfhj")
      ]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<DetailsMeals, String>> randomMeals() async {
    // ignore: todo
    // TODO: implement randomMeals
    throw UnimplementedError();
  }

  @override
  Future<Either<SearchMeals, String>> searchByArea(AreaParams params) async {
    if (params.a == "Batman") {
      return Either(
          data: SearchMealsTest([
        SearchMealTest(strMealThumb: "jshf", strMeal: "nvnfh", idMeal: "561")
      ]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<SearchMeals, String>> searchByCategories(
      CategoryParams params) async {
    if (params.c == "Batman") {
      return Either(
          data: SearchMealsTest([
        SearchMealTest(strMealThumb: "jshf", strMeal: "nvnfh", idMeal: "561")
      ]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<DetailsMeals, String>> searchByFirstLetter(
      SearchByFirstLetterParams params) async {
    if (params.f == "Batman") {
      return Either(
          data: DetailsMealsTest([
        DetailsMealTest(
            strMeal: 'kk',
            strMealThumb: 'dgs',
            idMeal: '5412',
            strCategory: 'gf',
            strArea: 'lkgd',
            strIngredient1: '',
            strIngredient2: '',
            strIngredient3: '',
            strIngredient4: '',
            strIngredient5: '',
            strIngredient6: '',
            strIngredient7: '',
            strIngredient8: '',
            strIngredient9: '',
            strIngredient10: '',
            strIngredient11: '',
            strIngredient12: '',
            strIngredient13: '',
            strIngredient14: '',
            strIngredient15: '',
            strInstructions: '',
            strMeasure1: '',
            strMeasure2: '',
            strMeasure3: '',
            strMeasure4: '',
            strMeasure5: '',
            strMeasure6: '',
            strMeasure7: '',
            strMeasure8: '',
            strMeasure9: '',
            strMeasure10: '',
            strMeasure11: '',
            strMeasure12: '',
            strMeasure13: '',
            strMeasure14: '',
            strMeasure15: '',
            strYoutube: '')
      ]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<SearchMeals, String>> searchByIngredients(
      IngredientParams params) async {
    if (params.i == "Batman") {
      return Either(
          data: SearchMealsTest([
        SearchMealTest(strMealThumb: "jshf", strMeal: "nvnfh", idMeal: "561")
      ]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<DetailsMeals, String>> searchMeal(
      SearchMealParams params) async {
    if (params.s == "Batman") {
      return Either(
          data: DetailsMealsTest([
        DetailsMealTest(
            strMeal: 'kk',
            strMealThumb: 'dgs',
            idMeal: '5412',
            strCategory: 'gf',
            strArea: 'lkgd',
            strIngredient1: '',
            strIngredient2: '',
            strIngredient3: '',
            strIngredient4: '',
            strIngredient5: '',
            strIngredient6: '',
            strIngredient7: '',
            strIngredient8: '',
            strIngredient9: '',
            strIngredient10: '',
            strIngredient11: '',
            strIngredient12: '',
            strIngredient13: '',
            strIngredient14: '',
            strIngredient15: '',
            strInstructions: '',
            strMeasure1: '',
            strMeasure2: '',
            strMeasure3: '',
            strMeasure4: '',
            strMeasure5: '',
            strMeasure6: '',
            strMeasure7: '',
            strMeasure8: '',
            strMeasure9: '',
            strMeasure10: '',
            strMeasure11: '',
            strMeasure12: '',
            strMeasure13: '',
            strMeasure14: '',
            strMeasure15: '',
            strYoutube: '')
      ]));
    } else {
      return Either(error: "data missing");
    }
  }

  @override
  Future<Either<DetailsMeals, String>> searchMealById(
      SearchMealByIdParams params) async {
    if (params.i == "Batman") {
      return Either(
          data: DetailsMealsTest([
        DetailsMealTest(
            strMeal: 'kk',
            strMealThumb: 'dgs',
            idMeal: '5412',
            strCategory: 'gf',
            strArea: 'lkgd',
            strIngredient1: '',
            strIngredient2: '',
            strIngredient3: '',
            strIngredient4: '',
            strIngredient5: '',
            strIngredient6: '',
            strIngredient7: '',
            strIngredient8: '',
            strIngredient9: '',
            strIngredient10: '',
            strIngredient11: '',
            strIngredient12: '',
            strIngredient13: '',
            strIngredient14: '',
            strIngredient15: '',
            strInstructions: '',
            strMeasure1: '',
            strMeasure2: '',
            strMeasure3: '',
            strMeasure4: '',
            strMeasure5: '',
            strMeasure6: '',
            strMeasure7: '',
            strMeasure8: '',
            strMeasure9: '',
            strMeasure10: '',
            strMeasure11: '',
            strMeasure12: '',
            strMeasure13: '',
            strMeasure14: '',
            strMeasure15: '',
            strYoutube: '')
      ]));
    } else {
      return Either(error: "data missing");
    }
  }
}

void main() {
  group("Repository Test", () {
    test('Testing listAreas class en equality', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<MealAreas, String> r = await s1.listAreas(AreaParams("Batman"));
      Either<MealAreas, String> r1 = await s1.listAreas(AreaParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });

    test('Testing listIngredients  ', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<MealIngredients, String> r =
          await s1.listIngredients(IngredientParams("Batman"));
      Either<MealIngredients, String> r1 =
          await s1.listIngredients(IngredientParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
    test('Testing listCategories ', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<SearchCategories, String> r =
          await s1.listCategories(CategoryParams("Batman"));
      Either<SearchCategories, String> r1 =
          await s1.listCategories(CategoryParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
    test('Testing searchByArea class en equality', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<SearchMeals, String> r =
          await s1.searchByArea(AreaParams("Batman"));
      Either<SearchMeals, String> r1 = await s1.searchByArea(AreaParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
    test('Testing searchByCategories class en equality', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<SearchMeals, String> r =
          await s1.searchByCategories(CategoryParams("Batman"));
      Either<SearchMeals, String> r1 =
          await s1.searchByCategories(CategoryParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
    test('Testing searchByFirstLetter class en equality', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<DetailsMeals, String> r =
          await s1.searchByFirstLetter(SearchByFirstLetterParams("Batman"));
      Either<DetailsMeals, String> r1 =
          await s1.searchByFirstLetter(SearchByFirstLetterParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
    test('Testing searchByIngredients class en equality', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<SearchMeals, String> r =
          await s1.searchByIngredients(IngredientParams("Batman"));
      Either<SearchMeals, String> r1 =
          await s1.searchByIngredients(IngredientParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
    test('Testing searchMeal class en equality', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<DetailsMeals, String> r =
          await s1.searchMeal(SearchMealParams("Batman"));
      Either<DetailsMeals, String> r1 =
          await s1.searchMeal(SearchMealParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
    test('Testing searchMealById class en equality', () async {
      SearchRepositoryTest s1 = SearchRepositoryTest();
      Either<DetailsMeals, String> r =
          await s1.searchMealById(SearchMealByIdParams("Batman"));
      Either<DetailsMeals, String> r1 =
          await s1.searchMealById(SearchMealByIdParams("Bat"));

      expect(r.data != null && r1.error != null, true);
    });
  });
}
