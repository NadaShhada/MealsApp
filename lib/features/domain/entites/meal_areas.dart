import 'meal_area.dart';
import 'package:collection/collection.dart';

abstract class MealAreas {
  final List<MealArea> mealAreas;

  MealAreas(this.mealAreas);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealAreas &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality().equals(mealAreas, other.mealAreas);

  @override
  int get hashCode => mealAreas.hashCode;
}
