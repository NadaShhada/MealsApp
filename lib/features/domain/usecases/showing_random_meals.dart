import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/details_meals.dart';
import '../repositories/search_repository.dart';

class SearchingRandomMeals
    implements UseCase<Future<Either<DetailsMeals, String>>, String > {
  final SearchRepository repo;

  SearchingRandomMeals(this.repo);
  @override
  Future< Either<DetailsMeals, String>>  call(
   String i  ) async{
    return repo.randomMeals()
        ;
  }
}