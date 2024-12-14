import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import '../../../../core/helper/either.dart';
import '../../../features/data/reposiories/search_repository_imp.dart';
import '../../../features/domain/entites/meal_areas.dart';
import '../../../features/domain/repositories/search_repository.dart';
import '../models_state.dart';

class AreasCubit extends Cubit<ModelsState> {
  AreasCubit() : super(ModelsLoadingState());

  void getAreas() async {
    emit(ModelsLoadingState());
    SearchRepository repo = SearchRepositoryImp();
    ListingAreas listingCategoriesDetails = ListingAreas(repo);
    Either<MealAreas, String> result = await listingCategoriesDetails.call(AreaParams("a"));
    if (result.data != null) {
      emit(ModelsDataState<MealAreas>(result.data!));
    } else {
      emit(ModelsErrorState(result.error!));
    }
  }
}
