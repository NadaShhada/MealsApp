import 'dart:io';
import 'package:dio/dio.dart';
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
import '../../../core/helper/either.dart';
import '../../domain/repositories/search_repository.dart';
import '../data-sourses/global_data_sources/global_operations_imp.dart';
import '../data-sourses/local_data_sources/local_operations_imp.dart';

class SearchRepositoryImp implements SearchRepository {
  @override
  Future<Either<MealAreas, String>> listAreas(AreaParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getMealsArea(params);
      // processing data
      MealAreasModel model = MealAreasModel.fromJson(data);
      if (model.mealAreas.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeListAreas(params, model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          MealAreasModel? model =
              await local.restoreListAreas(params) as MealAreasModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<SearchCategories, String>> listCategories(
      CategoryParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getSearchCategories(params);
      // processing data
      SearchCategoriesModel model = SearchCategoriesModel.fromJson(data);
      if (model.searchCategories.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeListCategories(params, model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          SearchCategoriesModel? model = await local
              .restoreListCategories(params) as SearchCategoriesModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<CategoriesDetails, String>> listCategoriesDetails() async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getCategoriesDetails();
      // processing data
      CategoriesDetailsModel model = CategoriesDetailsModel.fromJson(data);
      if (model.categoriesDetails.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeListCategoriesDetails(model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          CategoriesDetailsModel? model = await local
              .restoreListCategoriesDetails() as CategoriesDetailsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<MealIngredients, String>> listIngredients(
      IngredientParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getMealIngredients(params);
      // processing data
      MealIngredientsModel model = MealIngredientsModel.fromJson(data);
      if (model.mealIngredients.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeListIngredients(params, model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          MealIngredientsModel? model = await local
              .restoreListIngredients(params) as MealIngredientsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<DetailsMeals, String>> randomMeals() async {
    Map<String, dynamic> data;

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getRandomSearch();
      // processing data
      DetailsMealsModel model = DetailsMealsModel.fromJson(data);
      //store data
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<SearchMeals, String>> searchByArea(AreaParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getSearchMealsByArea(params);
      // processing data
      SearchMealsModel model = SearchMealsModel.fromJson(data);
      if (model.searchMeals.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data

      local.restoreSearchByArea(params);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          SearchMealsModel? model =
              await local.restoreSearchByArea(params) as SearchMealsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<SearchMeals, String>> searchByCategories(
      CategoryParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getSearchMealsByCategory(params);
      // processing data
      SearchMealsModel model = SearchMealsModel.fromJson(data);
      if (model.searchMeals.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeSearchByCategories(params, model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          SearchMealsModel? model =
              //restore data
              await local.restoreSearchByCategories(params)
                  as SearchMealsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<DetailsMeals, String>> searchByFirstLetter(
      SearchByFirstLetterParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getDetailsMealsByFirstLetter(params);
      // processing data
      DetailsMealsModel model = DetailsMealsModel.fromJson(data);
      if (model.detailsMeals.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeSearchByFirstLetter(params, model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          DetailsMealsModel? model = await local
              .restoreSearchByFirstLetter(params) as DetailsMealsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<SearchMeals, String>> searchByIngredients(
      IngredientParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getSearchMealsByIngredient(params);
      // processing data
      SearchMealsModel model = SearchMealsModel.fromJson(data);
      if (model.searchMeals.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeSearchByIngredients(params, model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          SearchMealsModel? model = await local
              .restoreSearchByIngredients(params) as SearchMealsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<DetailsMeals, String>> searchMeal(
      SearchMealParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getDetailsMealsBySearchMeal(params);
      // processing data
      DetailsMealsModel model = DetailsMealsModel.fromJson(data);
      if (model.detailsMeals.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      if (model.detailsMeals.isEmpty) {
        return Either(error: "not found Data");
      } else {
        local.storeSearchMeal(params, model);
        return Either(data: model);
      }
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          DetailsMealsModel? model =
              await local.restoreSearchMeal(params) as DetailsMealsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }

  @override
  Future<Either<DetailsMeals, String>> searchMealById(
      SearchMealByIdParams params) async {
    Map<String, dynamic> data;
    LocalOperationsImp local = LocalOperationsImp();

    try {
      //connection to api
      GlobalOperationsImp global = GlobalOperationsImp();
      data = await global.getDetailsMealsById(params);
      // processing data
      DetailsMealsModel model = DetailsMealsModel.fromJson(data);
      if (model.detailsMeals.isEmpty) {
        return Either(error: "not found Data");
      }
      //store data
      local.storeSearchMealById(params, model);
      return Either(data: model);
    } catch (e) {
      if (e is DioError) {
        //no internet connection error
        if (e.error is SocketException) {
          DetailsMealsModel? model =
              await local.restoreSearchMealById(params) as DetailsMealsModel?;
          if (model != null) {
            return Either(data: model);
          }
          return Either(error: "no internet connection!");
        } //no api key
        else if (e.type == DioErrorType.badResponse &&
            e.response != null &&
            e.response!.statusCode == 401) {
          return Either(error: "Unauthorized access");
        } else {
          return Either(error: "Failed connection to the server");
        }
      } //error for processing data
      return Either(error: e.toString());
    }
  }
}
