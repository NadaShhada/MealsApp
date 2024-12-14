import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/search_meals.dart';
import '../repositories/search_repository.dart';

class SearchingByCategories
    implements UseCase<Future<Either<SearchMeals, String>>,CategoryParams  > {
  final SearchRepository repo;

  SearchingByCategories(this.repo);
  @override
  Future< Either<SearchMeals, String>>  call(
     CategoryParams params) async{
    return repo.searchByCategories(
        params);
  }
}