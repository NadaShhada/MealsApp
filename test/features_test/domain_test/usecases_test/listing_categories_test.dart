import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/domain/entites/search_categories.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import 'package:themealdb/features/domain/usecases/listing_categories.dart';

import '../reprository_test/search_repository_test.dart';

void main() {

  test('Testing  ListingCategories useCase', () async{

    SearchRepositoryTest searchRepositoryTest=SearchRepositoryTest();
    ListingCategories listingCategories=ListingCategories(searchRepositoryTest);
    Either<SearchCategories,String> results1=await listingCategories.call( CategoryParams("Batman"));
    Either<SearchCategories,String> results2=await listingCategories.call( CategoryParams("Batm"));

    expect(results1.data != null && results2.error != null, true);
  });

}