import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import '../../../../../core/helper/either.dart';
import '../../../../features/data/reposiories/search_repository_imp.dart';
import '../../../../features/domain/repositories/search_repository.dart';
import '../../../features/domain/usecases/searching_by_categories.dart';
import '../models_state.dart';

class SearchBYCategoryCubit extends Cubit<ModelsState> {
  SearchBYCategoryCubit() : super(ModelsLoadingState());

  void getMealsByCategory(CategoryParams params) async {
    emit(ModelsLoadingState());
    SearchRepository repo = SearchRepositoryImp();
    SearchingByCategories searchingByCategories = SearchingByCategories(repo);
    Either<SearchMeals, String> result =
        await searchingByCategories.call(params);
    if (result.data != null) {
      emit(ModelsDataState<SearchMeals>(result.data!));
    } else {
      emit(ModelsErrorState(result.error!));
    }
  }

  Future getMealsByCategoriesLoadingState() async {
    emit(ModelsLoadingState());
  }
}
