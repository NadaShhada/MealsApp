import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import 'package:themealdb/features/domain/usecases/searching_by_ingredients.dart';
import '../../../../../core/helper/either.dart';
import '../../../../features/data/reposiories/search_repository_imp.dart';
import '../../../../features/domain/repositories/search_repository.dart';
import '../models_state.dart';

class SearchBYIngredientCubit extends Cubit<ModelsState> {
  SearchBYIngredientCubit() : super(ModelInitialState());

  void getMealsByIngredient(IngredientParams params) async {
    emit(ModelsLoadingState());
    SearchRepository repo = SearchRepositoryImp();
    SearchingByIngredients searchingByCategories = SearchingByIngredients(repo);
    Either<SearchMeals, String> result =
        await searchingByCategories.call(params);
    if (result.data != null) {
      // print(result.data);

      emit(ModelsDataState<SearchMeals>(result.data!));
    } else {
      emit(ModelsErrorState(result.error!));
    }
  }

  Future getMealsByIngredientLoadingState() async {
    emit(ModelsLoadingState());
  }
}
