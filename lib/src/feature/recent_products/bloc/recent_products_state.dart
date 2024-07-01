part of 'recent_products_bloc.dart';

@freezed
class RecentProductsState with _$RecentProductsState {
  const factory RecentProductsState({
    @Default(ScreenStatus.initial) ScreenStatus status,
    @Default(<NewSemplsData>[]) List<NewSemplsData> newSempls,
    @Default(ScreenStatus.initial) ScreenStatus screenCategoriesStatus,
    @Default(<CategoriesData>[]) List<CategoriesData> categories,
    @Default(<SelectedCategories>[])
    List<SelectedCategories> selectedCategories,
    @Default('') String searchQuery,
    @Default('') String errorText,
  }) = _RecentProductsState;
}
