import '../../domain/entites/search_meals.dart';
import 'search_meal_model.dart';

class SearchMealsModel extends SearchMeals{
  SearchMealsModel(List<SearchMealModel>  searchMeals):super(searchMeals);
  factory SearchMealsModel.fromJson(Map<String,dynamic> json){

    List<SearchMealModel> tempList=[];
    if (json['meals'] != null) {
      json['meals'].forEach((v) {
        tempList.add( SearchMealModel.fromJson(v)); });
    }
    return SearchMealsModel(tempList);
  }
  Map<String, List<Map<String, dynamic>>> toJson(){
    List<Map<String,dynamic>> tempList = [];
    for(int i=0;i< searchMeals.length;i++){
      tempList.add((searchMeals[i] as SearchMealModel).toJson());
    }
    return{"meals": tempList };


  }
}