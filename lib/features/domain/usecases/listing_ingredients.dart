import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/meal_ingredients.dart';
import '../repositories/search_repository.dart';

class ListingIngredients
    implements UseCase<Future<Either<MealIngredients, String>>,IngredientParams  > {
  final SearchRepository repo;

  ListingIngredients(this.repo);
  @override
  Future< Either<MealIngredients, String>>  call(
      IngredientParams params) async{
    return repo.listIngredients(
        params);
  }
}