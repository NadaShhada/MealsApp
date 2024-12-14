import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import 'package:themealdb/features/domain/usecases/searching_by_categories.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  SearchingByCategories useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    SearchingByCategories searchingByCategories=SearchingByCategories(searchRepositoryTest);
    Either<SearchMeals,String> results1=await searchingByCategories.call( CategoryParams("Batman"));
    Either<SearchMeals,String> results2=await searchingByCategories.call(CategoryParams( "Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}