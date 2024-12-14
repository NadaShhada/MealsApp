import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import 'package:themealdb/features/domain/usecases/searching_by_ingredients.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  SearchingByIngredients useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    SearchingByIngredients searchingByIngredients=SearchingByIngredients(searchRepositoryTest);
    Either<SearchMeals,String> results1=await searchingByIngredients.call( IngredientParams("Batman"));
    Either<SearchMeals,String> results2=await searchingByIngredients.call( IngredientParams("Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}