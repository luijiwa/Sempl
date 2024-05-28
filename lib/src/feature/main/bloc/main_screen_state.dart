part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(ScreenStatus.initial) ScreenStatus screenStatus,
    @Default(<NewSemplsData>[]) List<NewSemplsData> newSempls,
  }) = _MainScreenState;

  const MainScreenState._();
  int get newSemplsCount =>
      newSempls.length > 4 ? 4 : newSempls.length;
}
