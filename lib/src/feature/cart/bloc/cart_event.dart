part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.loadingData() = _LoadingData;
  const factory CartEvent.addItemToCart({
    required int id,
    required String name,
    required String description,
    required String image,
  }) = _AddItemToCart;

  const factory CartEvent.deleteItemFromCart({required int id}) =
      _DeleteItemFromCart;
  const factory CartEvent.clearCart() = _ClearCart;
}
