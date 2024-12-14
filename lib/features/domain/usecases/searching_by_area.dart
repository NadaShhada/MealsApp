import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/search_meals.dart';
import '../repositories/search_repository.dart';

class SearchingByArea
    implements UseCase<Future<Either<SearchMeals, String>>,AreaParams  > {
  final SearchRepository repo;

  SearchingByArea(this.repo);
  @override
  Future< Either<SearchMeals, String>>  call(
      AreaParams params) async{
    return repo.searchByArea(
        params);
  }
}