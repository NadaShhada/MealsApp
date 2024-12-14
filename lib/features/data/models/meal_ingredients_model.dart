
import '../../domain/entites/meal_ingredients.dart';

import 'meal_ingredient_model.dart';

class MealIngredientsModel extends MealIngredients{
  MealIngredientsModel(List<MealIngredientModel>  mealIngredients):super(mealIngredients);
  factory MealIngredientsModel.fromJson(Map<String,dynamic> json){

    List<MealIngredientModel> tempList=[];
    if (json['meals'] != null) {
      json['meals'].forEach((v) {
        tempList.add( MealIngredientModel.fromJson(v)); });
    }
    return MealIngredientsModel(tempList);
  }
  Map<String, List<Map<String, dynamic>>> toJson(){
    List<Map<String,dynamic>> tempList = [];
    for(int i=0;i< mealIngredients.length;i++){
      tempList.add((mealIngredients[i] as MealIngredientModel).toJson());
    }
    return{"meals": tempList };


  }
}
