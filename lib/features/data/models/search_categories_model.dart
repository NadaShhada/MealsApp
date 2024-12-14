import '../../domain/entites/search_categories.dart';
import 'search_category_model.dart';

class SearchCategoriesModel extends SearchCategories{
  SearchCategoriesModel(List<SearchCategoryModel>  searchCategories):super(searchCategories);
  factory SearchCategoriesModel.fromJson(Map<String,dynamic> json){

    List<SearchCategoryModel> tempList=[];
    if (json['meals'] != null) {
      json['meals'].forEach((v) {
        tempList.add( SearchCategoryModel.fromJson(v)); });
    }
    return SearchCategoriesModel(tempList);
  }
  Map<String, List<Map<String, dynamic>>> toJson(){
    List<Map<String,dynamic>> tempList = [];
    for(int i=0;i< searchCategories.length;i++){
      tempList.add((searchCategories[i] as SearchCategoryModel).toJson());
    }
    return{"meals": tempList };


  }

}