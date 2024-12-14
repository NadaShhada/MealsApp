import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/search_meals.dart';
import '../repositories/search_repository.dart';

class SearchingByIngredients
    implements UseCase<Future<Either<SearchMeals, String>>,IngredientParams  > {
  final SearchRepository repo;

  SearchingByIngredients(this.repo);
  @override
  Future< Either<SearchMeals, String>>  call(
     IngredientParams params) async{
    return repo.searchByIngredients(
        params);
  }
}