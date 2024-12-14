import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:themealdb/features/data/models/categories_details_model.dart';
import 'package:themealdb/features/data/models/details_meals_model.dart';

import 'package:themealdb/features/data/models/meal_areas_model.dart';
import 'package:themealdb/features/data/models/meal_ingredients_model.dart';
import 'package:themealdb/features/data/models/search_categories_model.dart';
import 'package:themealdb/features/data/models/search_meals_model.dart';
import 'package:themealdb/features/domain/entites/categories_details.dart';

import 'package:themealdb/features/domain/entites/details_meals.dart';

import 'package:themealdb/features/domain/entites/meal_areas.dart';

import 'package:themealdb/features/domain/entites/meal_ingredients.dart';

import 'package:themealdb/features/domain/entites/search_categories.dart';

import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import 'local_operations.dart';

class LocalOperationsImp implements LocalOperations {
  @override
  Future<MealAreas?> restoreListAreas(AreaParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return MealAreasModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<SearchCategories?> restoreListCategories(CategoryParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return SearchCategoriesModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<CategoriesDetails?> restoreListCategoriesDetails() async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString("ListCategoriesDetails");
    if (results != null) {
      var json = jsonDecode(results);
      return CategoriesDetailsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<MealIngredients?> restoreListIngredients(
      IngredientParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return MealIngredientsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<SearchMeals?> restoreSearchByArea(AreaParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return SearchMealsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<SearchMeals?> restoreSearchByCategories(CategoryParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return SearchMealsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<DetailsMeals?> restoreSearchByFirstLetter(
      SearchByFirstLetterParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return DetailsMealsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<SearchMeals?> restoreSearchByIngredients(
      IngredientParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return SearchMealsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<DetailsMeals?> restoreSearchMeal(SearchMealParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return DetailsMealsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<DetailsMeals?> restoreSearchMealById(
      SearchMealByIdParams params) async {
    final prefs = await SharedPreferences.getInstance();
    String? results = prefs.getString(params.toString());
    if (results != null) {
      var json = jsonDecode(results);
      return DetailsMealsModel.fromJson(json);
    }
    return Future.value(null);
  }

  @override
  Future<void> storeListAreas(AreaParams params, MealAreas model) async {
    // ignore: invalid_use_of_visible_for_testing_member
    SharedPreferences.setMockInitialValues({});

    var json = (model as MealAreasModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeListCategories(
      CategoryParams params, SearchCategories model) async {
    var json = (model as SearchCategoriesModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeListCategoriesDetails(CategoriesDetails model) async {
    var json = (model as CategoriesDetailsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("ListCategoriesDetails", result);
  }

  @override
  Future<void> storeListIngredients(
      IngredientParams params, MealIngredients model) async {
    var json = (model as MealIngredientsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeSearchByArea(AreaParams params, SearchMeals model) async {
    var json = (model as SearchMealsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeSearchByCategories(
      CategoryParams params, SearchMeals model) async {
    var json = (model as SearchMealsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeSearchByFirstLetter(
      SearchByFirstLetterParams params, DetailsMeals model) async {
    var json = (model as DetailsMealsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeSearchByIngredients(
      IngredientParams params, SearchMeals model) async {
    var json = (model as SearchMealsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeSearchMeal(
      SearchMealParams params, DetailsMeals model) async {
    var json = (model as DetailsMealsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }

  @override
  Future<void> storeSearchMealById(
      SearchMealByIdParams params, DetailsMeals model) async {
    var json = (model as DetailsMealsModel).toJson();
    String result = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(params.toString(), result);
  }
}
