// ignore_for_file: unnecessary_overrides

import 'meal.dart';

abstract class SearchMeal extends Meal {
  SearchMeal(
      {required String strMeal,
      required String strMealThumb,
      required String idMeal})
      : super(strMeal: strMeal, strMealThumb: strMealThumb, idMeal: idMeal);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other && other is SearchMeal && runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}
