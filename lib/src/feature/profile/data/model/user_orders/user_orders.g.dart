// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserOrdersImpl _$$UserOrdersImplFromJson(Map<String, dynamic> json) =>
    _$UserOrdersImpl(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => Orders.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Orders>[],
    );

Map<String, dynamic> _$$UserOrdersImplToJson(_$UserOrdersImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

_$OrdersImpl _$$OrdersImplFromJson(Map<String, dynamic> json) => _$OrdersImpl(
      id: json['id'] as int? ?? 0,
      productId: json['product_id'] as int? ?? 0,
      deliveryStatus: json['delivery_status'] as String? ?? '',
      photo: json['photo'] as String? ?? '',
      userAddress: json['user_address'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$OrdersImplToJson(_$OrdersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'delivery_status': instance.deliveryStatus,
      'photo': instance.photo,
      'user_address': instance.userAddress,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
