import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/details_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import 'package:themealdb/features/domain/usecases/searching_by_first_letter.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  SearchingByFirstLetter useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    SearchingByFirstLetter searchingByFirstLetter=SearchingByFirstLetter(searchRepositoryTest);
    Either<DetailsMeals,String> results1=await searchingByFirstLetter.call( SearchByFirstLetterParams("Batman"));
    Either<DetailsMeals,String> results2=await searchingByFirstLetter.call( SearchByFirstLetterParams("Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}