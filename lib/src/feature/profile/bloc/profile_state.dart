part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ScreenStatus.initial) ScreenStatus screenStatus,
    @Default(User()) User userFields,
    @Default(<Orders>[]) List<Orders> orders,
    @Default(ButtonPushStatus.initial)
    ButtonPushStatus statusChangeProfileFields,
    @Default('') String errorMessage,
  }) = _ProfileState;
}
