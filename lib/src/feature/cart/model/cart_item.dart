import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String image,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
