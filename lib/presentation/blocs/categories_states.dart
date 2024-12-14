// ignore_for_file: unnecessary_overrides

abstract class CategoriesState {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoriesState && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}

class CategoriesInitialState extends CategoriesState {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is CategoriesInitialState &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}

class CategoriesLoadingState extends CategoriesState {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is CategoriesLoadingState &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}

class CategoriesDataState<Data> extends CategoriesState {
  final Data data;
  CategoriesDataState(this.data);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is CategoriesDataState &&
          runtimeType == other.runtimeType &&
          data == other.data;

  @override
  int get hashCode => super.hashCode ^ data.hashCode;
}

class CategoriesErrorState extends CategoriesState {
  final String error;
  CategoriesErrorState(this.error);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is CategoriesErrorState &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => super.hashCode ^ error.hashCode;
}
