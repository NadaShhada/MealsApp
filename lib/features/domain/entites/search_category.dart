// ignore_for_file: unnecessary_overrides

import 'category.dart';

abstract class SearchCategory extends Category {
  SearchCategory(String strCategory) : super(strCategory);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is SearchCategory &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}
