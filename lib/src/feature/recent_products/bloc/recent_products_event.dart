part of 'recent_products_bloc.dart';

@freezed
class RecentProductsEvent with _$RecentProductsEvent {
  const factory RecentProductsEvent.started() = _Started;
  const factory RecentProductsEvent.loadCategories() = _LoadCategories;

  ///TODO Заменить на объект Item
}
