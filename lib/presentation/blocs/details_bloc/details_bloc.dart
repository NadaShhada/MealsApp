import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/entites/details_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import '../../../../core/helper/either.dart';
import '../../../features/data/reposiories/search_repository_imp.dart';
import '../../../features/domain/repositories/search_repository.dart';
import '../../../features/domain/usecases/searching_for_meal_by_id.dart';
import '../models_state.dart';

class DetailsCubit extends Cubit<ModelsState> {
  DetailsCubit() : super(ModelsLoadingState());

  void getMealsDetailsById(SearchMealByIdParams params) async {
    emit(ModelsLoadingState());
    SearchRepository repo = SearchRepositoryImp();
    SearchingForMealById searchingForMealById = SearchingForMealById(repo);
    Either<DetailsMeals, String> result = await searchingForMealById.call(params);
    if (result.data != null) {
      emit(ModelsDataState<DetailsMeals>(result.data!));
    } else {
      emit(ModelsErrorState(result.error!));
    }
  }
}
