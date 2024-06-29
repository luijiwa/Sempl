part of 'review_items_bloc.dart';

@freezed
class ReviewItemsEvent with _$ReviewItemsEvent {
  const factory ReviewItemsEvent.started() = _Started;
  const factory ReviewItemsEvent.changeStatusOfOrder() =
      _ChangeStatusOfOrder; //TODO Заменить на что-нибудь нормальное

  ///TODO Заменить на объект Item
}
