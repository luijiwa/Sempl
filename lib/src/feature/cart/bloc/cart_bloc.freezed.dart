// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingData value) loadingData,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_DeleteItemFromCart value) deleteItemFromCart,
    required TResult Function(_ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingData value)? loadingData,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult? Function(_ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingData value)? loadingData,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingData value) loadingData,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_DeleteItemFromCart value) deleteItemFromCart,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingData value)? loadingData,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingData value)? loadingData,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadingDataImplCopyWith<$Res> {
  factory _$$LoadingDataImplCopyWith(
          _$LoadingDataImpl value, $Res Function(_$LoadingDataImpl) then) =
      __$$LoadingDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDataImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadingDataImpl>
    implements _$$LoadingDataImplCopyWith<$Res> {
  __$$LoadingDataImplCopyWithImpl(
      _$LoadingDataImpl _value, $Res Function(_$LoadingDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingDataImpl with DiagnosticableTreeMixin implements _LoadingData {
  const _$LoadingDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.loadingData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingData value) loadingData,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_DeleteItemFromCart value) deleteItemFromCart,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return loadingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingData value)? loadingData,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return loadingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingData value)? loadingData,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (loadingData != null) {
      return loadingData(this);
    }
    return orElse();
  }
}

abstract class _LoadingData implements CartEvent {
  const factory _LoadingData() = _$LoadingDataImpl;
}

/// @nodoc
abstract class _$$AddItemToCartImplCopyWith<$Res> {
  factory _$$AddItemToCartImplCopyWith(
          _$AddItemToCartImpl value, $Res Function(_$AddItemToCartImpl) then) =
      __$$AddItemToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, String description, String image});
}

/// @nodoc
class __$$AddItemToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddItemToCartImpl>
    implements _$$AddItemToCartImplCopyWith<$Res> {
  __$$AddItemToCartImplCopyWithImpl(
      _$AddItemToCartImpl _value, $Res Function(_$AddItemToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$AddItemToCartImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddItemToCartImpl
    with DiagnosticableTreeMixin
    implements _AddItemToCart {
  const _$AddItemToCartImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.image});

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.addItemToCart(id: $id, name: $name, description: $description, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.addItemToCart'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemToCartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemToCartImplCopyWith<_$AddItemToCartImpl> get copyWith =>
      __$$AddItemToCartImplCopyWithImpl<_$AddItemToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingData value) loadingData,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_DeleteItemFromCart value) deleteItemFromCart,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return addItemToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingData value)? loadingData,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return addItemToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingData value)? loadingData,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (addItemToCart != null) {
      return addItemToCart(this);
    }
    return orElse();
  }
}

abstract class _AddItemToCart implements CartEvent {
  const factory _AddItemToCart(
      {required final int id,
      required final String name,
      required final String description,
      required final String image}) = _$AddItemToCartImpl;

  int get id;
  String get name;
  String get description;
  String get image;
  @JsonKey(ignore: true)
  _$$AddItemToCartImplCopyWith<_$AddItemToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteItemFromCartImplCopyWith<$Res> {
  factory _$$DeleteItemFromCartImplCopyWith(_$DeleteItemFromCartImpl value,
          $Res Function(_$DeleteItemFromCartImpl) then) =
      __$$DeleteItemFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteItemFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteItemFromCartImpl>
    implements _$$DeleteItemFromCartImplCopyWith<$Res> {
  __$$DeleteItemFromCartImplCopyWithImpl(_$DeleteItemFromCartImpl _value,
      $Res Function(_$DeleteItemFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteItemFromCartImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteItemFromCartImpl
    with DiagnosticableTreeMixin
    implements _DeleteItemFromCart {
  const _$DeleteItemFromCartImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.deleteItemFromCart(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.deleteItemFromCart'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItemFromCartImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItemFromCartImplCopyWith<_$DeleteItemFromCartImpl> get copyWith =>
      __$$DeleteItemFromCartImplCopyWithImpl<_$DeleteItemFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingData value) loadingData,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_DeleteItemFromCart value) deleteItemFromCart,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return deleteItemFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingData value)? loadingData,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return deleteItemFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingData value)? loadingData,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (deleteItemFromCart != null) {
      return deleteItemFromCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteItemFromCart implements CartEvent {
  const factory _DeleteItemFromCart({required final int id}) =
      _$DeleteItemFromCartImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteItemFromCartImplCopyWith<_$DeleteItemFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
          _$ClearCartImpl value, $Res Function(_$ClearCartImpl) then) =
      __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCartImpl>
    implements _$$ClearCartImplCopyWith<$Res> {
  __$$ClearCartImplCopyWithImpl(
      _$ClearCartImpl _value, $Res Function(_$ClearCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCartImpl with DiagnosticableTreeMixin implements _ClearCart {
  const _$ClearCartImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.clearCart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.clearCart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadingData value) loadingData,
    required TResult Function(_AddItemToCart value) addItemToCart,
    required TResult Function(_DeleteItemFromCart value) deleteItemFromCart,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadingData value)? loadingData,
    TResult? Function(_AddItemToCart value)? addItemToCart,
    TResult? Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadingData value)? loadingData,
    TResult Function(_AddItemToCart value)? addItemToCart,
    TResult Function(_DeleteItemFromCart value)? deleteItemFromCart,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _ClearCart implements CartEvent {
  const factory _ClearCart() = _$ClearCartImpl;
}

/// @nodoc
mixin _$CartState {
  ScreenStatus get status => throw _privateConstructorUsedError;
  List<CartItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({ScreenStatus status, List<CartItem> items});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScreenStatus status, List<CartItem> items});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_$CartStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl with DiagnosticableTreeMixin implements _CartState {
  const _$CartStateImpl(
      {this.status = ScreenStatus.initial,
      final List<CartItem> items = const []})
      : _items = items;

  @override
  @JsonKey()
  final ScreenStatus status;
  final List<CartItem> _items;
  @override
  @JsonKey()
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState(status: $status, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final ScreenStatus status,
      final List<CartItem> items}) = _$CartStateImpl;

  @override
  ScreenStatus get status;
  @override
  List<CartItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
