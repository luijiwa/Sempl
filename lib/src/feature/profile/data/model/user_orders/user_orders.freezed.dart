// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserOrders _$UserOrdersFromJson(Map<String, dynamic> json) {
  return _UserOrders.fromJson(json);
}

/// @nodoc
mixin _$UserOrders {
  List<Orders> get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserOrdersCopyWith<UserOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrdersCopyWith<$Res> {
  factory $UserOrdersCopyWith(
          UserOrders value, $Res Function(UserOrders) then) =
      _$UserOrdersCopyWithImpl<$Res, UserOrders>;
  @useResult
  $Res call({List<Orders> orders});
}

/// @nodoc
class _$UserOrdersCopyWithImpl<$Res, $Val extends UserOrders>
    implements $UserOrdersCopyWith<$Res> {
  _$UserOrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserOrdersImplCopyWith<$Res>
    implements $UserOrdersCopyWith<$Res> {
  factory _$$UserOrdersImplCopyWith(
          _$UserOrdersImpl value, $Res Function(_$UserOrdersImpl) then) =
      __$$UserOrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Orders> orders});
}

/// @nodoc
class __$$UserOrdersImplCopyWithImpl<$Res>
    extends _$UserOrdersCopyWithImpl<$Res, _$UserOrdersImpl>
    implements _$$UserOrdersImplCopyWith<$Res> {
  __$$UserOrdersImplCopyWithImpl(
      _$UserOrdersImpl _value, $Res Function(_$UserOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$UserOrdersImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserOrdersImpl with DiagnosticableTreeMixin implements _UserOrders {
  const _$UserOrdersImpl({final List<Orders> orders = const <Orders>[]})
      : _orders = orders;

  factory _$UserOrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserOrdersImplFromJson(json);

  final List<Orders> _orders;
  @override
  @JsonKey()
  List<Orders> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserOrders(orders: $orders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserOrders'))
      ..add(DiagnosticsProperty('orders', orders));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrdersImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOrdersImplCopyWith<_$UserOrdersImpl> get copyWith =>
      __$$UserOrdersImplCopyWithImpl<_$UserOrdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOrdersImplToJson(
      this,
    );
  }
}

abstract class _UserOrders implements UserOrders {
  const factory _UserOrders({final List<Orders> orders}) = _$UserOrdersImpl;

  factory _UserOrders.fromJson(Map<String, dynamic> json) =
      _$UserOrdersImpl.fromJson;

  @override
  List<Orders> get orders;
  @override
  @JsonKey(ignore: true)
  _$$UserOrdersImplCopyWith<_$UserOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
mixin _$Orders {
  int get id => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  String get deliveryStatus => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get userAddress => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call(
      {int id,
      int productId,
      String deliveryStatus,
      String photo,
      String userAddress,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res, $Val extends Orders>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? deliveryStatus = null,
    Object? photo = null,
    Object? userAddress = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersImplCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$OrdersImplCopyWith(
          _$OrdersImpl value, $Res Function(_$OrdersImpl) then) =
      __$$OrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int productId,
      String deliveryStatus,
      String photo,
      String userAddress,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$OrdersImplCopyWithImpl<$Res>
    extends _$OrdersCopyWithImpl<$Res, _$OrdersImpl>
    implements _$$OrdersImplCopyWith<$Res> {
  __$$OrdersImplCopyWithImpl(
      _$OrdersImpl _value, $Res Function(_$OrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? deliveryStatus = null,
    Object? photo = null,
    Object? userAddress = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$OrdersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersImpl with DiagnosticableTreeMixin implements _Orders {
  const _$OrdersImpl(
      {this.id = 0,
      this.productId = 0,
      this.deliveryStatus = '',
      this.photo = '',
      this.userAddress = '',
      this.createdAt = '',
      this.updatedAt = ''});

  factory _$OrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int productId;
  @override
  @JsonKey()
  final String deliveryStatus;
  @override
  @JsonKey()
  final String photo;
  @override
  @JsonKey()
  final String userAddress;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Orders(id: $id, productId: $productId, deliveryStatus: $deliveryStatus, photo: $photo, userAddress: $userAddress, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Orders'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('deliveryStatus', deliveryStatus))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('userAddress', userAddress))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId, deliveryStatus,
      photo, userAddress, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersImplToJson(
      this,
    );
  }
}

abstract class _Orders implements Orders {
  const factory _Orders(
      {final int id,
      final int productId,
      final String deliveryStatus,
      final String photo,
      final String userAddress,
      final String createdAt,
      final String updatedAt}) = _$OrdersImpl;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$OrdersImpl.fromJson;

  @override
  int get id;
  @override
  int get productId;
  @override
  String get deliveryStatus;
  @override
  String get photo;
  @override
  String get userAddress;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
