import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/details_meals.dart';
import '../repositories/search_repository.dart';

class SearchingForMealById
    implements UseCase<Future<Either<DetailsMeals, String>>,SearchMealByIdParams  > {
  final SearchRepository repo;

  SearchingForMealById(this.repo);
  @override
  Future< Either<DetailsMeals, String>>  call(
      SearchMealByIdParams params
      ) async{
    return repo.searchMealById(params
        );
  }
}