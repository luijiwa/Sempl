// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemEventCopyWith<ItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res, ItemEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res, $Val extends ItemEvent>
    implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadItemImplCopyWith<$Res>
    implements $ItemEventCopyWith<$Res> {
  factory _$$LoadItemImplCopyWith(
          _$LoadItemImpl value, $Res Function(_$LoadItemImpl) then) =
      __$$LoadItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$LoadItemImplCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$LoadItemImpl>
    implements _$$LoadItemImplCopyWith<$Res> {
  __$$LoadItemImplCopyWithImpl(
      _$LoadItemImpl _value, $Res Function(_$LoadItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadItemImpl implements _LoadItem {
  const _$LoadItemImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ItemEvent.loadItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadItemImplCopyWith<_$LoadItemImpl> get copyWith =>
      __$$LoadItemImplCopyWithImpl<_$LoadItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItem value) loadItem,
  }) {
    return loadItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadItem value)? loadItem,
  }) {
    return loadItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItem value)? loadItem,
    required TResult orElse(),
  }) {
    if (loadItem != null) {
      return loadItem(this);
    }
    return orElse();
  }
}

abstract class _LoadItem implements ItemEvent {
  const factory _LoadItem({required final String id}) = _$LoadItemImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$LoadItemImplCopyWith<_$LoadItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemState {
  ScreenStatus get status => throw _privateConstructorUsedError;
  Item get item => throw _privateConstructorUsedError;
  double get sumRating => throw _privateConstructorUsedError;
  Rating get itemRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStateCopyWith<ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res, ItemState>;
  @useResult
  $Res call(
      {ScreenStatus status, Item item, double sumRating, Rating itemRating});

  $ItemCopyWith<$Res> get item;
  $RatingCopyWith<$Res> get itemRating;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res, $Val extends ItemState>
    implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? item = null,
    Object? sumRating = null,
    Object? itemRating = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      sumRating: null == sumRating
          ? _value.sumRating
          : sumRating // ignore: cast_nullable_to_non_nullable
              as double,
      itemRating: null == itemRating
          ? _value.itemRating
          : itemRating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get itemRating {
    return $RatingCopyWith<$Res>(_value.itemRating, (value) {
      return _then(_value.copyWith(itemRating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemStateImplCopyWith<$Res>
    implements $ItemStateCopyWith<$Res> {
  factory _$$ItemStateImplCopyWith(
          _$ItemStateImpl value, $Res Function(_$ItemStateImpl) then) =
      __$$ItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus status, Item item, double sumRating, Rating itemRating});

  @override
  $ItemCopyWith<$Res> get item;
  @override
  $RatingCopyWith<$Res> get itemRating;
}

/// @nodoc
class __$$ItemStateImplCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$ItemStateImpl>
    implements _$$ItemStateImplCopyWith<$Res> {
  __$$ItemStateImplCopyWithImpl(
      _$ItemStateImpl _value, $Res Function(_$ItemStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? item = null,
    Object? sumRating = null,
    Object? itemRating = null,
  }) {
    return _then(_$ItemStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      sumRating: null == sumRating
          ? _value.sumRating
          : sumRating // ignore: cast_nullable_to_non_nullable
              as double,
      itemRating: null == itemRating
          ? _value.itemRating
          : itemRating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ));
  }
}

/// @nodoc

class _$ItemStateImpl extends _ItemState {
  const _$ItemStateImpl(
      {this.status = ScreenStatus.initial,
      this.item = const Item(),
      this.sumRating = 0,
      this.itemRating = const Rating()})
      : super._();

  @override
  @JsonKey()
  final ScreenStatus status;
  @override
  @JsonKey()
  final Item item;
  @override
  @JsonKey()
  final double sumRating;
  @override
  @JsonKey()
  final Rating itemRating;

  @override
  String toString() {
    return 'ItemState(status: $status, item: $item, sumRating: $sumRating, itemRating: $itemRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.sumRating, sumRating) ||
                other.sumRating == sumRating) &&
            (identical(other.itemRating, itemRating) ||
                other.itemRating == itemRating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, item, sumRating, itemRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemStateImplCopyWith<_$ItemStateImpl> get copyWith =>
      __$$ItemStateImplCopyWithImpl<_$ItemStateImpl>(this, _$identity);
}

abstract class _ItemState extends ItemState {
  const factory _ItemState(
      {final ScreenStatus status,
      final Item item,
      final double sumRating,
      final Rating itemRating}) = _$ItemStateImpl;
  const _ItemState._() : super._();

  @override
  ScreenStatus get status;
  @override
  Item get item;
  @override
  double get sumRating;
  @override
  Rating get itemRating;
  @override
  @JsonKey(ignore: true)
  _$$ItemStateImplCopyWith<_$ItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
