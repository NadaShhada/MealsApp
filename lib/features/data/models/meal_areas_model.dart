
import '../../domain/entites/meal_areas.dart';
import 'meal_area_model.dart';

class MealAreasModel extends MealAreas{
  MealAreasModel(List<MealAreaModel>  mealAreas):super(mealAreas);
  factory MealAreasModel.fromJson(Map<String,dynamic> json){

    List<MealAreaModel> tempList=[];
    if (json['meals'] != null) {
      json['meals'].forEach((v) {
        tempList.add( MealAreaModel.fromJson(v)); });
    }
    return MealAreasModel(tempList);
  }
  Map<String, List<Map<String, dynamic>>> toJson(){
    List<Map<String,dynamic>> tempList = [];
    for(int i=0;i< mealAreas.length;i++){
      tempList.add((mealAreas[i] as MealAreaModel).toJson());
    }
    return{"meals": tempList };


  }
}
