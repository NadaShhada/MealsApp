import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/meal_ingredients.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import 'package:themealdb/features/domain/usecases/listing_ingredients.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  listingIngredients useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    ListingIngredients listingIngredients=ListingIngredients(searchRepositoryTest);
    Either<MealIngredients,String> results1=await listingIngredients.call( IngredientParams("Batman"));
    Either<MealIngredients,String> results2=await listingIngredients.call(IngredientParams( "Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}