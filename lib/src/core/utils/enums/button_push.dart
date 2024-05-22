enum ButtonPushStatus { initial, loading, success, failure }

extension ButtonPushStatusX on ButtonPushStatus {
  bool get isInitial => this == ButtonPushStatus.initial;
  bool get isInLoading => this == ButtonPushStatus.loading;
  bool get isSuccess => this == ButtonPushStatus.success;
  bool get isFailure => this == ButtonPushStatus.failure;
}
