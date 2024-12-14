import 'category.dart';

abstract class CategoryDetails  extends Category {
  final String idCategory;

  final String strCategoryThumb;
  final String strCategoryDescription;

  CategoryDetails(
      { required String strCategory,
        required this.idCategory,
      required this.strCategoryThumb,
      required this.strCategoryDescription}) : super(strCategory);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is CategoryDetails &&
          runtimeType == other.runtimeType &&
          idCategory == other.idCategory &&
          strCategoryThumb == other.strCategoryThumb &&
          strCategoryDescription == other.strCategoryDescription;

  @override
  int get hashCode =>
      super.hashCode ^
      idCategory.hashCode ^
      strCategoryThumb.hashCode ^
      strCategoryDescription.hashCode;
}
