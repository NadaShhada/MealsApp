import 'meal.dart';

abstract class DetailsMeal extends Meal {
  final String? strDrinkAlternate;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String? strTags;
  final String strYoutube;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strIngredient6;
  final String strIngredient7;
  final String strIngredient8;
  final String strIngredient9;
  final String strIngredient10;
  final String strIngredient11;
  final String strIngredient12;
  final String strIngredient13;
  final String strIngredient14;
  final String strIngredient15;
  final String? strIngredient16;
  final String? strIngredient17;
  final String? strIngredient18;
  final String? strIngredient19;
  final String? strIngredient20;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  final String strMeasure6;
  final String strMeasure7;
  final String strMeasure8;
  final String strMeasure9;
  final String strMeasure10;
  final String strMeasure11;
  final String strMeasure12;
  final String strMeasure13;
  final String strMeasure14;
  final String strMeasure15;
  final String? strMeasure16;
  final String? strMeasure17;
  final String? strMeasure18;
  final String? strMeasure19;
  final String? strMeasure20;
  final String? strSource;
  final String? strImageSource;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;

  DetailsMeal(
      {required String strMeal,
      required String strMealThumb,
      required String idMeal,
      this.strDrinkAlternate,
      required this.strCategory,
      required this.strArea,
      required this.strInstructions,
      this.strTags,
      required this.strYoutube,
      required this.strIngredient1,
      required this.strIngredient2,
      required this.strIngredient3,
      required this.strIngredient4,
      required this.strIngredient5,
      required this.strIngredient6,
      required this.strIngredient7,
      required this.strIngredient8,
      required this.strIngredient9,
      required this.strIngredient10,
      required this.strIngredient11,
      required this.strIngredient12,
      required this.strIngredient13,
      required this.strIngredient14,
      required this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      required this.strMeasure1,
      required this.strMeasure2,
      required this.strMeasure3,
      required this.strMeasure4,
      required this.strMeasure5,
      required this.strMeasure6,
      required this.strMeasure7,
      required this.strMeasure8,
      required this.strMeasure9,
      required this.strMeasure10,
      required this.strMeasure11,
      required this.strMeasure12,
      required this.strMeasure13,
      required this.strMeasure14,
      required this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20,
      this.strSource,
      this.strImageSource,
      this.strCreativeCommonsConfirmed,
      this.dateModified})
      : super(strMeal: strMeal, strMealThumb: strMealThumb, idMeal: idMeal);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is DetailsMeal &&
          runtimeType == other.runtimeType &&
          strDrinkAlternate == other.strDrinkAlternate &&
          strCategory == other.strCategory &&
          strArea == other.strArea &&
          strInstructions == other.strInstructions &&
          strTags == other.strTags &&
          strYoutube == other.strYoutube &&
          strIngredient1 == other.strIngredient1 &&
          strIngredient2 == other.strIngredient2 &&
          strIngredient3 == other.strIngredient3 &&
          strIngredient4 == other.strIngredient4 &&
          strIngredient5 == other.strIngredient5 &&
          strIngredient6 == other.strIngredient6 &&
          strIngredient7 == other.strIngredient7 &&
          strIngredient8 == other.strIngredient8 &&
          strIngredient9 == other.strIngredient9 &&
          strIngredient10 == other.strIngredient10 &&
          strIngredient11 == other.strIngredient11 &&
          strIngredient12 == other.strIngredient12 &&
          strIngredient13 == other.strIngredient13 &&
          strIngredient14 == other.strIngredient14 &&
          strIngredient15 == other.strIngredient15 &&
          strIngredient16 == other.strIngredient16 &&
          strIngredient17 == other.strIngredient17 &&
          strIngredient18 == other.strIngredient18 &&
          strIngredient19 == other.strIngredient19 &&
          strIngredient20 == other.strIngredient20 &&
          strMeasure1 == other.strMeasure1 &&
          strMeasure2 == other.strMeasure2 &&
          strMeasure3 == other.strMeasure3 &&
          strMeasure4 == other.strMeasure4 &&
          strMeasure5 == other.strMeasure5 &&
          strMeasure6 == other.strMeasure6 &&
          strMeasure7 == other.strMeasure7 &&
          strMeasure8 == other.strMeasure8 &&
          strMeasure9 == other.strMeasure9 &&
          strMeasure10 == other.strMeasure10 &&
          strMeasure11 == other.strMeasure11 &&
          strMeasure12 == other.strMeasure12 &&
          strMeasure13 == other.strMeasure13 &&
          strMeasure14 == other.strMeasure14 &&
          strMeasure15 == other.strMeasure15 &&
          strMeasure16 == other.strMeasure16 &&
          strMeasure17 == other.strMeasure17 &&
          strMeasure18 == other.strMeasure18 &&
          strMeasure19 == other.strMeasure19 &&
          strMeasure20 == other.strMeasure20 &&
          strSource == other.strSource &&
          strImageSource == other.strImageSource &&
          strCreativeCommonsConfirmed == other.strCreativeCommonsConfirmed &&
          dateModified == other.dateModified;

  @override
  int get hashCode =>
      super.hashCode ^
      strDrinkAlternate.hashCode ^
      strCategory.hashCode ^
      strArea.hashCode ^
      strInstructions.hashCode ^
      strTags.hashCode ^
      strYoutube.hashCode ^
      strIngredient1.hashCode ^
      strIngredient2.hashCode ^
      strIngredient3.hashCode ^
      strIngredient4.hashCode ^
      strIngredient5.hashCode ^
      strIngredient6.hashCode ^
      strIngredient7.hashCode ^
      strIngredient8.hashCode ^
      strIngredient9.hashCode ^
      strIngredient10.hashCode ^
      strIngredient11.hashCode ^
      strIngredient12.hashCode ^
      strIngredient13.hashCode ^
      strIngredient14.hashCode ^
      strIngredient15.hashCode ^
      strIngredient16.hashCode ^
      strIngredient17.hashCode ^
      strIngredient18.hashCode ^
      strIngredient19.hashCode ^
      strIngredient20.hashCode ^
      strMeasure1.hashCode ^
      strMeasure2.hashCode ^
      strMeasure3.hashCode ^
      strMeasure4.hashCode ^
      strMeasure5.hashCode ^
      strMeasure6.hashCode ^
      strMeasure7.hashCode ^
      strMeasure8.hashCode ^
      strMeasure9.hashCode ^
      strMeasure10.hashCode ^
      strMeasure11.hashCode ^
      strMeasure12.hashCode ^
      strMeasure13.hashCode ^
      strMeasure14.hashCode ^
      strMeasure15.hashCode ^
      strMeasure16.hashCode ^
      strMeasure17.hashCode ^
      strMeasure18.hashCode ^
      strMeasure19.hashCode ^
      strMeasure20.hashCode ^
      strSource.hashCode ^
      strImageSource.hashCode ^
      strCreativeCommonsConfirmed.hashCode ^
      dateModified.hashCode;
}
