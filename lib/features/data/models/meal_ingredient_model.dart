import '../../domain/entites/meal_ingredient.dart';

class MealIngredientModel extends MealIngredient {
  MealIngredientModel(
      {required String idIngredient,
      required String strIngredient,
      String? strType,
      String? strDescription})
      : super(
            idIngredient: idIngredient,
            strIngredient: strIngredient,
            strType: strType,
            strDescription: strDescription);

  factory MealIngredientModel.fromJson(Map<String, dynamic> json) {
    return MealIngredientModel(
        idIngredient: json["idIngredient"],
        strIngredient: json["strIngredient"]!,
        strDescription: json["strDescription"]!,
        strType: json["strType"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "idIngredient": idIngredient,
      "strIngredient": strIngredient,
      "strDescription": strDescription,
      "strType": strType
    };
  }
}
