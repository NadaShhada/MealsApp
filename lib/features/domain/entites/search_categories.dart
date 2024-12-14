import 'package:collection/collection.dart';

import 'search_category.dart';

abstract class SearchCategories {
  final List<SearchCategory> searchCategories;

  SearchCategories(this.searchCategories);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchCategories &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality()
              .equals(searchCategories, other.searchCategories);
  @override
  int get hashCode => searchCategories.hashCode;
}
