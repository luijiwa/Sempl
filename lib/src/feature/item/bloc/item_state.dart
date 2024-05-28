part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    @Default(ScreenStatus.initial) ScreenStatus status,
    @Default(Item()) Item item,
    @Default(0) double sumRating,
    @Default(Rating()) Rating itemRating,
  }) = _ItemState;
  const ItemState._();

  String get ratingCount => itemRating.data.length.toString();
  String get ratingAsString => sumRating.toStringAsFixed(2);
}
