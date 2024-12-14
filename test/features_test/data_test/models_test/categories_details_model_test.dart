import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:themealdb/features/data/models/categories_details_model.dart';

void main() {
  test('Testing  CategoriesDetailsModel   test', () {
    Map<String, dynamic> json = {
      "categories": [
        {
          "idCategory": "5",
          "strCategory": "Miscellaneous",
          "strCategoryThumb":
              "https://www.themealdb.com/images/category/miscellaneous.png",
          "strCategoryDescription":
              "General foods that don't fit into another category"
        },
        {
          "idCategory": "6",
          "strCategory": "Pasta",
          "strCategoryThumb":
              "https://www.themealdb.com/images/category/pasta.png",
          "strCategoryDescription":
              "Pasta is a staple food of traditional Italian cuisine, with the first reference dating to 1154 in Sicily.\r\n\r\nAlso commonly used to refer to the variety of pasta dishes, pasta is typically a noodle made from an unleavened dough of a durum wheat flour mixed with water or eggs and formed into sheets or various shapes, then cooked by boiling or baking. As an alternative for those wanting a different taste, or who need to avoid products containing gluten, some pastas can be made using rice flour in place of wheat.[3][4] Pastas may be divided into two broad categories, dried (pasta secca) and fresh (pasta fresca)."
        },
      ]
    };
    CategoriesDetailsModel model = CategoriesDetailsModel.fromJson(json);
    Map<String, dynamic> newJson = model.toJson();
    expect(const DeepCollectionEquality().equals(json, newJson), true);
  });
}
