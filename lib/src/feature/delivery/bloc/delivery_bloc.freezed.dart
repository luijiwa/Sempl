// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditAddress value) editAddress,
    required TResult Function(_LoadAddress value) loadAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditAddress value)? editAddress,
    TResult? Function(_LoadAddress value)? loadAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditAddress value)? editAddress,
    TResult Function(_LoadAddress value)? loadAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryEventCopyWith<$Res> {
  factory $DeliveryEventCopyWith(
          DeliveryEvent value, $Res Function(DeliveryEvent) then) =
      _$DeliveryEventCopyWithImpl<$Res, DeliveryEvent>;
}

/// @nodoc
class _$DeliveryEventCopyWithImpl<$Res, $Val extends DeliveryEvent>
    implements $DeliveryEventCopyWith<$Res> {
  _$DeliveryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditAddressImplCopyWith<$Res> {
  factory _$$EditAddressImplCopyWith(
          _$EditAddressImpl value, $Res Function(_$EditAddressImpl) then) =
      __$$EditAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String city,
      String street,
      String house,
      String apartment,
      String zipCode,
      String entrance});
}

/// @nodoc
class __$$EditAddressImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$EditAddressImpl>
    implements _$$EditAddressImplCopyWith<$Res> {
  __$$EditAddressImplCopyWithImpl(
      _$EditAddressImpl _value, $Res Function(_$EditAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? street = null,
    Object? house = null,
    Object? apartment = null,
    Object? zipCode = null,
    Object? entrance = null,
  }) {
    return _then(_$EditAddressImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: null == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditAddressImpl implements _EditAddress {
  const _$EditAddressImpl(
      {required this.city,
      required this.street,
      required this.house,
      required this.apartment,
      required this.zipCode,
      required this.entrance});

  @override
  final String city;
  @override
  final String street;
  @override
  final String house;
  @override
  final String apartment;
  @override
  final String zipCode;
  @override
  final String entrance;

  @override
  String toString() {
    return 'DeliveryEvent.editAddress(city: $city, street: $street, house: $house, apartment: $apartment, zipCode: $zipCode, entrance: $entrance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAddressImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.entrance, entrance) ||
                other.entrance == entrance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, city, street, house, apartment, zipCode, entrance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAddressImplCopyWith<_$EditAddressImpl> get copyWith =>
      __$$EditAddressImplCopyWithImpl<_$EditAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditAddress value) editAddress,
    required TResult Function(_LoadAddress value) loadAddress,
  }) {
    return editAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditAddress value)? editAddress,
    TResult? Function(_LoadAddress value)? loadAddress,
  }) {
    return editAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditAddress value)? editAddress,
    TResult Function(_LoadAddress value)? loadAddress,
    required TResult orElse(),
  }) {
    if (editAddress != null) {
      return editAddress(this);
    }
    return orElse();
  }
}

abstract class _EditAddress implements DeliveryEvent {
  const factory _EditAddress(
      {required final String city,
      required final String street,
      required final String house,
      required final String apartment,
      required final String zipCode,
      required final String entrance}) = _$EditAddressImpl;

  String get city;
  String get street;
  String get house;
  String get apartment;
  String get zipCode;
  String get entrance;
  @JsonKey(ignore: true)
  _$$EditAddressImplCopyWith<_$EditAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAddressImplCopyWith<$Res> {
  factory _$$LoadAddressImplCopyWith(
          _$LoadAddressImpl value, $Res Function(_$LoadAddressImpl) then) =
      __$$LoadAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAddressImplCopyWithImpl<$Res>
    extends _$DeliveryEventCopyWithImpl<$Res, _$LoadAddressImpl>
    implements _$$LoadAddressImplCopyWith<$Res> {
  __$$LoadAddressImplCopyWithImpl(
      _$LoadAddressImpl _value, $Res Function(_$LoadAddressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAddressImpl implements _LoadAddress {
  const _$LoadAddressImpl();

  @override
  String toString() {
    return 'DeliveryEvent.loadAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditAddress value) editAddress,
    required TResult Function(_LoadAddress value) loadAddress,
  }) {
    return loadAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditAddress value)? editAddress,
    TResult? Function(_LoadAddress value)? loadAddress,
  }) {
    return loadAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditAddress value)? editAddress,
    TResult Function(_LoadAddress value)? loadAddress,
    required TResult orElse(),
  }) {
    if (loadAddress != null) {
      return loadAddress(this);
    }
    return orElse();
  }
}

abstract class _LoadAddress implements DeliveryEvent {
  const factory _LoadAddress() = _$LoadAddressImpl;
}

/// @nodoc
mixin _$DeliveryState {
  Address get address => throw _privateConstructorUsedError;
  Address get initialAddress => throw _privateConstructorUsedError;
  ButtonPushStatus get statusSend => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryStateCopyWith<DeliveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryStateCopyWith<$Res> {
  factory $DeliveryStateCopyWith(
          DeliveryState value, $Res Function(DeliveryState) then) =
      _$DeliveryStateCopyWithImpl<$Res, DeliveryState>;
  @useResult
  $Res call(
      {Address address,
      Address initialAddress,
      ButtonPushStatus statusSend,
      String errorMessage});
}

/// @nodoc
class _$DeliveryStateCopyWithImpl<$Res, $Val extends DeliveryState>
    implements $DeliveryStateCopyWith<$Res> {
  _$DeliveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? initialAddress = freezed,
    Object? statusSend = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      initialAddress: freezed == initialAddress
          ? _value.initialAddress
          : initialAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      statusSend: null == statusSend
          ? _value.statusSend
          : statusSend // ignore: cast_nullable_to_non_nullable
              as ButtonPushStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryStateImplCopyWith<$Res>
    implements $DeliveryStateCopyWith<$Res> {
  factory _$$DeliveryStateImplCopyWith(
          _$DeliveryStateImpl value, $Res Function(_$DeliveryStateImpl) then) =
      __$$DeliveryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Address initialAddress,
      ButtonPushStatus statusSend,
      String errorMessage});
}

/// @nodoc
class __$$DeliveryStateImplCopyWithImpl<$Res>
    extends _$DeliveryStateCopyWithImpl<$Res, _$DeliveryStateImpl>
    implements _$$DeliveryStateImplCopyWith<$Res> {
  __$$DeliveryStateImplCopyWithImpl(
      _$DeliveryStateImpl _value, $Res Function(_$DeliveryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? initialAddress = freezed,
    Object? statusSend = null,
    Object? errorMessage = null,
  }) {
    return _then(_$DeliveryStateImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      initialAddress: freezed == initialAddress
          ? _value.initialAddress
          : initialAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      statusSend: null == statusSend
          ? _value.statusSend
          : statusSend // ignore: cast_nullable_to_non_nullable
              as ButtonPushStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryStateImpl implements _DeliveryState {
  const _$DeliveryStateImpl(
      {this.address = const Address(),
      this.initialAddress = const Address(),
      this.statusSend = ButtonPushStatus.initial,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final Address address;
  @override
  @JsonKey()
  final Address initialAddress;
  @override
  @JsonKey()
  final ButtonPushStatus statusSend;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'DeliveryState(address: $address, initialAddress: $initialAddress, statusSend: $statusSend, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryStateImpl &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.initialAddress, initialAddress) &&
            (identical(other.statusSend, statusSend) ||
                other.statusSend == statusSend) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(initialAddress),
      statusSend,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryStateImplCopyWith<_$DeliveryStateImpl> get copyWith =>
      __$$DeliveryStateImplCopyWithImpl<_$DeliveryStateImpl>(this, _$identity);
}

abstract class _DeliveryState implements DeliveryState {
  const factory _DeliveryState(
      {final Address address,
      final Address initialAddress,
      final ButtonPushStatus statusSend,
      final String errorMessage}) = _$DeliveryStateImpl;

  @override
  Address get address;
  @override
  Address get initialAddress;
  @override
  ButtonPushStatus get statusSend;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryStateImplCopyWith<_$DeliveryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
