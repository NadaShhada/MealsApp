abstract class MealArea {
  final String strArea;

  MealArea(this.strArea);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealArea &&
          runtimeType == other.runtimeType &&
          strArea == other.strArea;

  @override
  int get hashCode => strArea.hashCode;
}