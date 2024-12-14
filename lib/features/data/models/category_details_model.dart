import '../../domain/entites/category_details.dart';

class CategoryDetailsModel extends CategoryDetails {
  CategoryDetailsModel(
      {required String strCategory,
      required String idCategory,
      required String strCategoryThumb,
      required String strCategoryDescription})
      : super(
            strCategory: strCategory,
            idCategory: idCategory,
            strCategoryThumb: strCategoryThumb,
            strCategoryDescription: strCategoryDescription);

  factory CategoryDetailsModel.fromJson(Map<String, dynamic> json) {
    return CategoryDetailsModel(
      idCategory: json["idCategory"]!,
      strCategory: json["strCategory"]!,
      strCategoryThumb: json["strCategoryThumb"]!,
      strCategoryDescription: json["strCategoryDescription"]!,
    );
  }

  Map<String, String> toJson() {
    return {
      "idCategory": idCategory,
      "strCategory": strCategory,
      "strCategoryThumb": strCategoryThumb,
      "strCategoryDescription": strCategoryDescription
    };
  }
}
