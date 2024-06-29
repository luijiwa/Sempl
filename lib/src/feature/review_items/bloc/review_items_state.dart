part of 'review_items_bloc.dart';

@freezed
class ReviewItemsState with _$ReviewItemsState {
  const factory ReviewItemsState({
    @Default(ScreenStatus.initial) ScreenStatus status,
    @Default(StatusOfOrder.deliveyWaiting) StatusOfOrder statusOfOrder,
  }) = _ReviewItemsState;
}
