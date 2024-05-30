part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState({
    @Default(ScreenStatus.initial) ScreenStatus screenStatus,
    @Default(<NewSemplsData>[]) List<NewSemplsData> newSempls,
    @Default(ScreenStatus.initial) ScreenStatus screenCategoriesStatus,
    @Default(<CategoriesData>[]) List<CategoriesData> categories,
    @Default(<CategoriesData>[]) List<CategoriesData> searchResults,
    @Default('') String searchQuery,
  }) = _MainScreenState;

  const MainScreenState._();
  int get newSemplsCount => newSempls.length > 4 ? 4 : newSempls.length;
}
