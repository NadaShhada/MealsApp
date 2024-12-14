import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import 'package:themealdb/features/domain/usecases/searching_by_area.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  SearchingByArea useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    SearchingByArea searchingByArea=SearchingByArea(searchRepositoryTest);
    Either<SearchMeals,String> results1=await searchingByArea.call(AreaParams( "Batman"));
    Either<SearchMeals,String> results2=await searchingByArea.call( AreaParams("Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}