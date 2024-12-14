abstract class Category{
  final String strCategory;

  Category(this.strCategory);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category &&
          runtimeType == other.runtimeType &&
          strCategory == other.strCategory;

  @override
  int get hashCode => strCategory.hashCode;
}