import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_orders.freezed.dart';
part 'user_orders.g.dart';

@freezed
class UserOrders with _$UserOrders {
  const factory UserOrders({
    @Default(<Orders>[]) List<Orders> orders,
  }) = _UserOrders;

  factory UserOrders.fromJson(Map<String, Object?> json) =>
      _$UserOrdersFromJson(json);
}

@freezed
class Orders with _$Orders {
  const factory Orders({
    @Default(0) int id,
    @Default(0) int productId,
    @Default('') String deliveryStatus,
    @Default('') String photo,
    @Default('') String userAddress,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _Orders;

  factory Orders.fromJson(Map<String, Object?> json) => _$OrdersFromJson(json);
}
