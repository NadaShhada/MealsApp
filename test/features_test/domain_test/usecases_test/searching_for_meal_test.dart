import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/details_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import 'package:themealdb/features/domain/usecases/searching_for_meal.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  SearchingForMeal useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    SearchingForMeal searchingForMeal=SearchingForMeal(searchRepositoryTest);
    Either<DetailsMeals,String> results1=await searchingForMeal.call( SearchMealParams("Batman"));
    Either<DetailsMeals,String> results2=await searchingForMeal.call(SearchMealParams( "Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}