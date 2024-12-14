import 'details_meal.dart';
import 'package:collection/collection.dart';

abstract class DetailsMeals {
  final List<DetailsMeal> detailsMeals;

  DetailsMeals(this.detailsMeals);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailsMeals &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality()
              .equals(detailsMeals, other.detailsMeals);

  @override
  int get hashCode => detailsMeals.hashCode;
}
