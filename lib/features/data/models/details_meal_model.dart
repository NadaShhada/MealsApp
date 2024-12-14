import '../../domain/entites/details_meal.dart';

class DetailsMealModel extends DetailsMeal {
  DetailsMealModel(
      {super.strDrinkAlternate,
      super.strTags,
      super.strIngredient16,
      super.strIngredient17,
      super.strIngredient18,
      super.strIngredient19,
      super.strIngredient20,
      required super.strMeal,
      required super.strMealThumb,
      required super.idMeal,
      required super.strCategory,
      required super.strArea,
      required super.strInstructions,
      required super.strYoutube,
      required super.strIngredient1,
      required super.strIngredient2,
      required super.strIngredient3,
      required super.strIngredient4,
      required super.strIngredient5,
      required super.strIngredient6,
      required super.strIngredient7,
      required super.strIngredient8,
      required super.strIngredient9,
      required super.strIngredient10,
      required super.strIngredient11,
      required super.strIngredient12,
      required super.strIngredient13,
      required super.strIngredient14,
      required super.strIngredient15,
      super.strMeasure16,
      super.strMeasure17,
      super.strMeasure18,
      super.strMeasure19,
      super.strMeasure20,
      super.strSource,
      super.strImageSource,
      super.strCreativeCommonsConfirmed,
      super.dateModified,
      required super.strMeasure1,
      required super.strMeasure2,
      required super.strMeasure3,
      required super.strMeasure4,
      required super.strMeasure5,
      required super.strMeasure6,
      required super.strMeasure7,
      required super.strMeasure8,
      required super.strMeasure9,
      required super.strMeasure10,
      required super.strMeasure11,
      required super.strMeasure12,
      required super.strMeasure13,
      required super.strMeasure14,
      required super.strMeasure15});

  factory DetailsMealModel.fromJson(Map<String, dynamic> json) {
    return DetailsMealModel(
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"]!,
        idMeal: json["idMeal"]!,
        strCategory: json["strCategory"]!,
        strArea: json["strArea"]!,
        strIngredient1: json["strIngredient1"]!,
        strIngredient2:json["strIngredient2"]!,
        strIngredient3: json["strIngredient3"]!,
        strIngredient4: json["strIngredient4"]!,
        strIngredient5: json["strIngredient5"]!,
        strIngredient6: json["strIngredient6"]!,
        strIngredient7: json["strIngredient7"]!,
        strIngredient8: json["strIngredient8"]!,
        strIngredient9: json["strIngredient9"]!,
        strIngredient10:json["strIngredient10"]!,
        strIngredient11: json["strIngredient11"]!,
        strIngredient12: json["strIngredient12"]!,
        strIngredient13:json["strIngredient13"]!,
        strIngredient14: json["strIngredient14"]!,
        strIngredient15: json["strIngredient15"]!,
        strInstructions: json["strInstructions"]!,
        strMeasure1:json["strMeasure1"]!,
        strMeasure2: json["strMeasure2"]!,
        strMeasure3:json["strMeasure3"]!,
        strMeasure4: json["strMeasure4"]!,
        strMeasure5: json["strMeasure5"]!,
        strMeasure6: json["strMeasure6"]!,
        strMeasure7: json["strMeasure7"]!,
        strMeasure8: json["strMeasure8"]!,
        strMeasure9: json["strMeasure9"]!,
        strMeasure10: json["strMeasure10"]!,
        strMeasure11: json["strMeasure11"]!,
        strMeasure12: json["strMeasure12"]!,
        strMeasure13: json["strMeasure13"]!,
        strMeasure14: json["strMeasure14"]!,
        strMeasure15: json["strMeasure15"]!,
        strYoutube: json["strYoutube"]!,
        strDrinkAlternate:json["strDrinkAlternate"],
        strTags: json["strTags"],
        strCreativeCommonsConfirmed:json["strCreativeCommonsConfirmed"],
        strImageSource: json["strImageSource"],
        strIngredient16: json["strIngredient16"],
        strIngredient17: json["strIngredient17"],
        strIngredient18: json["strIngredient18"],
        strIngredient19: json["strIngredient19"],
        strIngredient20: json["strIngredient20"],
        strMeasure16: json["strMeasure16"],
        strMeasure17: json["strMeasure17"],
        strMeasure18: json["strMeasure18"],
        strMeasure19: json["strMeasure19"],
        strMeasure20: json["strMeasure20"],
        strSource: json["strSource"]);
  }

  Map<String, dynamic> toJson() {
    return {"idMeal":idMeal,
    "strMeal": strMeal,
        "strDrinkAlternate": strDrinkAlternate,
        "strCategory": strCategory,
        "strArea": strArea,
        "strInstructions": strInstructions,
      "strMealThumb":strMealThumb,
    "strTags": strTags,
      "strYoutube": strYoutube,
      "strIngredient1":strIngredient1,
      "strIngredient2": strIngredient2,
      "strIngredient3": strIngredient3,
      "strIngredient4": strIngredient4,
      "strIngredient5": strIngredient5,
      "strIngredient6": strIngredient6,
      "strIngredient7": strIngredient7,
      "strIngredient8": strIngredient8,
      "strIngredient9": strIngredient9,
      "strIngredient10": strIngredient10,
      "strIngredient11": strIngredient11,
      "strIngredient12":strIngredient12,
      "strIngredient13": strIngredient13,
      "strIngredient14": strIngredient14,
      "strIngredient15":strIngredient15,
      "strIngredient16": strIngredient16,
      "strIngredient17": strIngredient17,
      "strIngredient18": strIngredient18,
      "strIngredient19": strIngredient19,
      "strIngredient20": strIngredient20,
      "strMeasure1": strMeasure1,
      "strMeasure2": strMeasure2,
      "strMeasure3":strMeasure3,
      "strMeasure4": strMeasure4,
      "strMeasure5": strMeasure5,
      "strMeasure6": strMeasure6,
      "strMeasure7": strMeasure7,
      "strMeasure8": strMeasure8,
      "strMeasure9": strMeasure9,
      "strMeasure10":strMeasure10,
      "strMeasure11": strMeasure11,
      "strMeasure12":strMeasure12,
      "strMeasure13": strMeasure13,
      "strMeasure14": strMeasure14,
      "strMeasure15": strMeasure15,
      "strMeasure16": strMeasure16,
      "strMeasure17": strMeasure17,
      "strMeasure18": strMeasure18,
      "strMeasure19": strMeasure19,
      "strMeasure20": strMeasure20,
      "strSource": strSource,
      "strImageSource": strImageSource,
      "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed,
      "dateModified": dateModified};
  }
}
