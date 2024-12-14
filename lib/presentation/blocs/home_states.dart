// ignore_for_file: unnecessary_overrides

abstract class HomeState {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeState && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}

class HomeInitialState extends HomeState {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeInitialState &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}

class HomeLoadingRandomModelState extends HomeState {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeLoadingRandomModelState &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}

class HomeDataRandomModelState<Data> extends HomeState {
  final Data randomData;

  HomeDataRandomModelState(this.randomData);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeDataRandomModelState &&
          runtimeType == other.runtimeType &&
          randomData == other.randomData;

  @override
  int get hashCode => super.hashCode ^ randomData.hashCode;
}

class HomeErrorRandomModelState extends HomeState {
  final String randomError;

  HomeErrorRandomModelState(this.randomError);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeErrorRandomModelState &&
          runtimeType == other.runtimeType &&
          randomError == other.randomError;

  @override
  int get hashCode => super.hashCode ^ randomError.hashCode;
}

class HomeLoadingState extends HomeState {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeLoadingState &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}

class HomeDataState<Data> extends HomeState {
  final Data data;

  HomeDataState(this.data);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeDataState &&
          runtimeType == other.runtimeType &&
          data == other.data;

  @override
  int get hashCode => super.hashCode ^ data.hashCode;
}

class HomeErrorState extends HomeState {
  final String error;

  HomeErrorState(this.error);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeErrorState &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => super.hashCode ^ error.hashCode;
}
