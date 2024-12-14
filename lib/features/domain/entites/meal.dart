abstract class Meal{
  final String strMeal;
  final String strMealThumb;
  final String idMeal;

  Meal({required this.strMeal,required this.strMealThumb,required this.idMeal});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Meal &&
          runtimeType == other.runtimeType &&
          strMeal == other.strMeal &&
          strMealThumb == other.strMealThumb &&
          idMeal == other.idMeal;

  @override
  int get hashCode =>
      strMeal.hashCode ^ strMealThumb.hashCode ^ idMeal.hashCode;
}