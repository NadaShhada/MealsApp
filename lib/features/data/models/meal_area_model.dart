import '../../domain/entites/meal_area.dart';

class MealAreaModel extends MealArea {
  MealAreaModel(super.strArea);

  factory MealAreaModel.fromJson(Map<String, dynamic> json) {
    return MealAreaModel(json["strArea"]!);
  }

  Map<String, dynamic> toJson() {
    return {"strArea": strArea};
  }
}
