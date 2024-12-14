import 'meal_ingredient.dart';
import 'package:collection/collection.dart';

abstract class MealIngredients {
  final List<MealIngredient> mealIngredients;

  MealIngredients(this.mealIngredients);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealIngredients &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality()
              .equals(mealIngredients, other.mealIngredients);
  @override
  int get hashCode => mealIngredients.hashCode;
}
