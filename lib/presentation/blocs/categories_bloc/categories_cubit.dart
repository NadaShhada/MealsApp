import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/entites/categories_details.dart';
import '../../../../core/helper/either.dart';
import '../../../features/data/reposiories/search_repository_imp.dart';
import '../../../features/domain/repositories/search_repository.dart';
import '../../../features/domain/usecases/listing_catrgories_details.dart';
import '../models_state.dart';

class CategoriesCubit extends Cubit<ModelsState> {
  CategoriesCubit() : super(ModelsLoadingState());

  void getCategoriesDetails() async {
    emit(ModelsLoadingState());
    SearchRepository repo = SearchRepositoryImp();
    ListingCategoriesDetails listingCategoriesDetails = ListingCategoriesDetails(repo);
    Either<CategoriesDetails, String> result = await listingCategoriesDetails.call("kj");
    if (result.data != null) {
      emit(ModelsDataState<CategoriesDetails>(result.data!));
    } else {
      emit(ModelsErrorState(result.error!));
    }
  }
}
