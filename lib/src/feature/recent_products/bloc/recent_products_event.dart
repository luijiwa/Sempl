part of 'recent_products_bloc.dart';

@freezed
class RecentProductsEvent with _$RecentProductsEvent {
  const factory RecentProductsEvent.started() = _Started;
  const factory RecentProductsEvent.loadCategories() = _LoadCategories;

  const factory RecentProductsEvent.searchCategory(String query) =
      _SearchCategory;
  const factory RecentProductsEvent.searchPickMainCategory(int index) =
      _PickMainCategory;
  const factory RecentProductsEvent.searchPickSubCategory(
      int index, int subIndex) = _PickSubCategory;

  ///TODO Заменить на объект Item
}
