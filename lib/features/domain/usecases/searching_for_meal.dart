import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/details_meals.dart';
import '../repositories/search_repository.dart';

class SearchingForMeal
    implements UseCase<Future<Either<DetailsMeals, String>>,SearchMealParams  > {
  final SearchRepository repo;

  SearchingForMeal(this.repo);
  @override
  Future< Either<DetailsMeals, String>>  call(
     SearchMealParams params) async{
    return repo.searchMeal(
        params);
  }
}