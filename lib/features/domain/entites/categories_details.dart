import 'category_details.dart';
import 'package:collection/collection.dart';

abstract class CategoriesDetails {
  final List<CategoryDetails> categoriesDetails;

  CategoriesDetails(this.categoriesDetails);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoriesDetails &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality()
              .equals(categoriesDetails, other.categoriesDetails);

  @override
  int get hashCode => categoriesDetails.hashCode;
}
