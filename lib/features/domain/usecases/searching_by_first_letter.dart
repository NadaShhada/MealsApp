import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/details_meals.dart';
import '../repositories/search_repository.dart';

class SearchingByFirstLetter
    implements UseCase<Future<Either<DetailsMeals, String>>,SearchByFirstLetterParams   > {
  final SearchRepository repo;

  SearchingByFirstLetter(this.repo);
  @override
  Future< Either<DetailsMeals, String>>  call(
      SearchByFirstLetterParams params) async{
    return repo.searchByFirstLetter(
        params);
  }
}