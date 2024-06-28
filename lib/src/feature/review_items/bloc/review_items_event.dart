part of 'review_items_bloc.dart';

@freezed
class ReviewItemsEvent with _$ReviewItemsEvent {
  const factory ReviewItemsEvent.started() = _Started;

  ///TODO Заменить на объект Item
}
