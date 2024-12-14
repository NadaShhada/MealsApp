import '../../domain/entites/search_category.dart';

class SearchCategoryModel extends SearchCategory{
  SearchCategoryModel(super.strCategory);
  factory SearchCategoryModel.fromJson(Map<String, dynamic> json) {
    return SearchCategoryModel(json["strCategory"]!);
  }

  Map<String, dynamic> toJson() {
    return {"strCategory":strCategory};
  }
}