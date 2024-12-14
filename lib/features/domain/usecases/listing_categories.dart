import 'package:themealdb/features/domain/usecases/listing_areas.dart';

import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/search_categories.dart';
import '../repositories/search_repository.dart';

class ListingCategories
    implements UseCase<Future<Either<SearchCategories, String>>,CategoryParams  > {
  final SearchRepository repo;

  ListingCategories(this.repo);
  @override
  Future< Either<SearchCategories, String>>  call(
      CategoryParams params) async{
    return repo.listCategories(
        params);
  }
}