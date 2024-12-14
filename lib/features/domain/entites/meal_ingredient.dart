abstract class MealIngredient{

 final String idIngredient;
 final String strIngredient;
 final String? strDescription;
 final String? strType;

  MealIngredient({required this.idIngredient, required this.strIngredient, this.strDescription, this.strType});

 @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealIngredient &&
          runtimeType == other.runtimeType &&
          idIngredient == other.idIngredient &&
          strIngredient == other.strIngredient &&
          strDescription == other.strDescription &&
          strType == other.strType;

  @override
  int get hashCode =>
      idIngredient.hashCode ^
      strIngredient.hashCode ^
      strDescription.hashCode ^
      strType.hashCode;
}