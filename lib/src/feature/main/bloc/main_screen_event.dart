part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.started() = _Started;
  // const factory MainScreenEvent.loadCategories() = _LoadCategories;
  const factory MainScreenEvent.searchCategory({required String query}) =
      _SearchCategory;

  const factory MainScreenEvent.pickCategory() = _PickCategory;
}
