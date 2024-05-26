part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ScreenStatus.initial) ScreenStatus screenStatus,
    @Default(User()) User user_fields,
  }) = _ProfileState;
}
