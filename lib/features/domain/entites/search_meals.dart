import 'search_meal.dart';
import 'package:collection/collection.dart';

abstract class SearchMeals {
  final List<SearchMeal> searchMeals;

  SearchMeals(this.searchMeals);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchMeals &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality().equals(searchMeals, other.searchMeals);

  @override
  int get hashCode => searchMeals.hashCode;
}
