part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(ScreenStatus.initial) ScreenStatus status,
    @Default([]) List<CartItem> items,
  }) = _CartState;
}
