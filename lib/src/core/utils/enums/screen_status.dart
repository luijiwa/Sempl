enum ScreenStatus { initial, loading, success, empty, failure }

extension ScreenStatusX on ScreenStatus {
  bool get isInitial => this == ScreenStatus.initial;
  bool get isInLoading => this == ScreenStatus.loading;
  bool get isSuccess => this == ScreenStatus.success;
  bool get isEmpty => this == ScreenStatus.empty;
  bool get isFailure => this == ScreenStatus.failure;
}
