import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/meal_areas.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  ListingAreas useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    ListingAreas listingAreas=ListingAreas(searchRepositoryTest);
    Either<MealAreas,String> results1=await listingAreas.call(AreaParams("Batman") );
    Either<MealAreas,String> results2=await listingAreas.call( AreaParams("Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}