import '../../domain/entites/details_meals.dart';
import 'details_meal_model.dart';

class DetailsMealsModel extends DetailsMeals {
  DetailsMealsModel(List<DetailsMealModel> detailsMeals) : super(detailsMeals);
  factory DetailsMealsModel.fromJson(Map<String, dynamic> json) {
    List<DetailsMealModel> tempList = [];
    if (json['meals'] != null) {
      json['meals'].forEach((v) {
        tempList.add(DetailsMealModel.fromJson(v));
      });
    }
    return DetailsMealsModel(tempList);
  }
  Map<String, List<Map<String, dynamic>>> toJson() {
    List<Map<String, dynamic>> tempList = [];
    for (int i = 0; i < detailsMeals.length; i++) {
      tempList.add((detailsMeals[i] as DetailsMealModel).toJson());
    }
    return {"meals": tempList};
  }
}
