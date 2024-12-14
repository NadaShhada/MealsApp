import '../../../core/helper/either.dart';
import '../../../core/helper/usecase.dart';
import '../entites/categories_details.dart';
import '../repositories/search_repository.dart';

class ListingCategoriesDetails
    implements UseCase<Future<Either<CategoriesDetails, String>>,String  > {
  final SearchRepository repo;

  ListingCategoriesDetails(this.repo);
  @override
  Future< Either<CategoriesDetails, String>>  call(
      String i) async{
    return repo.listCategoriesDetails()
    ;
  }
}