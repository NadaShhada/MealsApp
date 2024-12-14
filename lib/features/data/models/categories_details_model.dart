
import '../../domain/entites/categories_details.dart';
import 'category_details_model.dart';

class CategoriesDetailsModel extends CategoriesDetails{
  CategoriesDetailsModel(List<CategoryDetailsModel>  categoriesDetails):super(categoriesDetails);
  factory CategoriesDetailsModel.fromJson(Map<String,dynamic> json){

    List<CategoryDetailsModel> tempList=[];
    if (json['categories'] != null) {
      json['categories'].forEach((v) {
        tempList.add( CategoryDetailsModel.fromJson(v)); });
    }
    return CategoriesDetailsModel(tempList);
  }
  Map<String, List<Map<String, dynamic>>> toJson(){
  List<Map<String,dynamic>> tempList = [];
  for(int i=0;i< categoriesDetails.length;i++){
  tempList.add((categoriesDetails[i] as CategoryDetailsModel).toJson());
  }
 return{"categories": tempList };


  }
}
