import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themealdb/features/domain/entites/details_meals.dart';
import '../../../../core/helper/either.dart';
import '../../../features/data/reposiories/search_repository_imp.dart';
import '../../../features/domain/repositories/search_repository.dart';
import '../../../features/domain/usecases/listing_areas.dart';
import '../../../features/domain/usecases/searching_for_meal.dart';
import '../../../features/domain/usecases/showing_random_meals.dart';
import '../home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingRandomModelState());

  void getRandomSearch() async {
    emit(HomeLoadingRandomModelState());
    SearchRepository repo = SearchRepositoryImp();

    SearchingRandomMeals searchingRandomMeals = SearchingRandomMeals(repo);
    Either<DetailsMeals, String> result =
        await searchingRandomMeals.call("repo");
    if (result.data != null) {
      emit(HomeDataRandomModelState<DetailsMeals>(result.data!));
    } else {
      emit(HomeErrorRandomModelState(result.error!));
    }
  }

  void getDetailsMealsBySearchMeal(SearchMealParams params) async {
    emit(HomeLoadingState());
    SearchRepository repo = SearchRepositoryImp();

    SearchingForMeal searchingForMeal = SearchingForMeal(repo);
    Either<DetailsMeals, String> result = await searchingForMeal.call(params);
    if (result.data != null) {
      emit(HomeDataState<DetailsMeals>(result.data!));
    } else {
      emit(HomeErrorState(result.error!));
    }
  }
}
