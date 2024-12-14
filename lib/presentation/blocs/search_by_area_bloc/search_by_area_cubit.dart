import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/entites/search_meals.dart';
import 'package:themealdb/features/domain/usecases/listing_areas.dart';
import 'package:themealdb/features/domain/usecases/searching_by_area.dart';
import '../../../../../core/helper/either.dart';
import '../../../../features/data/reposiories/search_repository_imp.dart';
import '../../../../features/domain/repositories/search_repository.dart';
import '../models_state.dart';

class SearchBYAreaCubit extends Cubit<ModelsState> {
  SearchBYAreaCubit() : super(ModelsLoadingState());

  void getMealsByArea(AreaParams params) async {
    emit(ModelsLoadingState());
    SearchRepository repo = SearchRepositoryImp();
    SearchingByArea searchingByArea = SearchingByArea(repo);
    Either<SearchMeals, String> result = await searchingByArea.call(params);
    if (result.data != null) {
      // print(result.data);
      emit(ModelsDataState<SearchMeals>(result.data!));
    } else {
      emit(ModelsErrorState(result.error!));
    }
  }
  void getMealsByAreaLoadingState() async {
    emit(ModelsLoadingState());

  }
}
