import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/core/helper/either.dart';
import 'package:themealdb/features/data/reposiories/search_repository_imp.dart';
import 'package:themealdb/features/domain/entites/meal_areas.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';

void main() {
  group("Testing searchRepositoryImp ", () {
    test('Testing  Repository with data ', () async {
      SearchRepositoryImp repo = SearchRepositoryImp();
      Either<MealAreas, String> result =
          await repo.listAreas(AreaParams("list"));

      expect(result.data != null, true);
    });
    test('Testing  Repository without networking ', () async {
      SearchRepositoryImp repo = SearchRepositoryImp();
      Either<MealAreas, String> result =
          await repo.listAreas(AreaParams("list"));

      expect(result.error != null && result.error == "no internet connection",
          true);
    });

    test('Testing  Repository without autherization ', () async {
      SearchRepositoryImp repo = SearchRepositoryImp();
      Either<MealAreas, String> result =
          await repo.listAreas(AreaParams("list"));

      expect(
          result.error != null && result.error == "Unauthorized access", true);
    });
    test('Testing  Repository without access to the server ', () async {
      SearchRepositoryImp repo = SearchRepositoryImp();
      Either<MealAreas, String> result =
          await repo.listAreas(AreaParams("list"));

      expect(
          result.error != null &&
              result.error == "Failed connection to the server",
          true);
    });
    test('Testing  Repository  DetailsShow  with processing failed', () async {
      SearchRepositoryImp repo = SearchRepositoryImp();
      Either<MealAreas, String> result =
          await repo.listAreas(AreaParams("list"));
      // print(result.error);
      expect(result.error != null && result.error == "Failed processing data",
          true);
    });
    test('Testing  Repository  DetailsShow  with model error', () async {
      SearchRepositoryImp repo = SearchRepositoryImp();
      Either<MealAreas, String> result =
          await repo.listAreas(AreaParams("list"));
//print(result.error);
      expect(result.error != null, true);
    });
  });
}
