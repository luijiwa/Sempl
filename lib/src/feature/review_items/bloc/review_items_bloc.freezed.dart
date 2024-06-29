// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewItemsEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeStatusOfOrder value) changeStatusOfOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeStatusOfOrder value)? changeStatusOfOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeStatusOfOrder value)? changeStatusOfOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewItemsEventCopyWith<$Res> {
  factory $ReviewItemsEventCopyWith(
          ReviewItemsEvent value, $Res Function(ReviewItemsEvent) then) =
      _$ReviewItemsEventCopyWithImpl<$Res, ReviewItemsEvent>;
}

/// @nodoc
class _$ReviewItemsEventCopyWithImpl<$Res, $Val extends ReviewItemsEvent>
    implements $ReviewItemsEventCopyWith<$Res> {
  _$ReviewItemsEventCopyWithImpl(this._value, this._then);

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
    extends _$ReviewItemsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ReviewItemsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ReviewItemsEvent.started'));
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
    required TResult Function(_ChangeStatusOfOrder value) changeStatusOfOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeStatusOfOrder value)? changeStatusOfOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeStatusOfOrder value)? changeStatusOfOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReviewItemsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeStatusOfOrderImplCopyWith<$Res> {
  factory _$$ChangeStatusOfOrderImplCopyWith(_$ChangeStatusOfOrderImpl value,
          $Res Function(_$ChangeStatusOfOrderImpl) then) =
      __$$ChangeStatusOfOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeStatusOfOrderImplCopyWithImpl<$Res>
    extends _$ReviewItemsEventCopyWithImpl<$Res, _$ChangeStatusOfOrderImpl>
    implements _$$ChangeStatusOfOrderImplCopyWith<$Res> {
  __$$ChangeStatusOfOrderImplCopyWithImpl(_$ChangeStatusOfOrderImpl _value,
      $Res Function(_$ChangeStatusOfOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeStatusOfOrderImpl
    with DiagnosticableTreeMixin
    implements _ChangeStatusOfOrder {
  const _$ChangeStatusOfOrderImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewItemsEvent.changeStatusOfOrder()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ReviewItemsEvent.changeStatusOfOrder'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStatusOfOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeStatusOfOrder value) changeStatusOfOrder,
  }) {
    return changeStatusOfOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeStatusOfOrder value)? changeStatusOfOrder,
  }) {
    return changeStatusOfOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeStatusOfOrder value)? changeStatusOfOrder,
    required TResult orElse(),
  }) {
    if (changeStatusOfOrder != null) {
      return changeStatusOfOrder(this);
    }
    return orElse();
  }
}

abstract class _ChangeStatusOfOrder implements ReviewItemsEvent {
  const factory _ChangeStatusOfOrder() = _$ChangeStatusOfOrderImpl;
}

/// @nodoc
mixin _$ReviewItemsState {
  ScreenStatus get status => throw _privateConstructorUsedError;
  StatusOfOrder get statusOfOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewItemsStateCopyWith<ReviewItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewItemsStateCopyWith<$Res> {
  factory $ReviewItemsStateCopyWith(
          ReviewItemsState value, $Res Function(ReviewItemsState) then) =
      _$ReviewItemsStateCopyWithImpl<$Res, ReviewItemsState>;
  @useResult
  $Res call({ScreenStatus status, StatusOfOrder statusOfOrder});
}

/// @nodoc
class _$ReviewItemsStateCopyWithImpl<$Res, $Val extends ReviewItemsState>
    implements $ReviewItemsStateCopyWith<$Res> {
  _$ReviewItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusOfOrder = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      statusOfOrder: null == statusOfOrder
          ? _value.statusOfOrder
          : statusOfOrder // ignore: cast_nullable_to_non_nullable
              as StatusOfOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewItemsStateImplCopyWith<$Res>
    implements $ReviewItemsStateCopyWith<$Res> {
  factory _$$ReviewItemsStateImplCopyWith(_$ReviewItemsStateImpl value,
          $Res Function(_$ReviewItemsStateImpl) then) =
      __$$ReviewItemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScreenStatus status, StatusOfOrder statusOfOrder});
}

/// @nodoc
class __$$ReviewItemsStateImplCopyWithImpl<$Res>
    extends _$ReviewItemsStateCopyWithImpl<$Res, _$ReviewItemsStateImpl>
    implements _$$ReviewItemsStateImplCopyWith<$Res> {
  __$$ReviewItemsStateImplCopyWithImpl(_$ReviewItemsStateImpl _value,
      $Res Function(_$ReviewItemsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? statusOfOrder = null,
  }) {
    return _then(_$ReviewItemsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      statusOfOrder: null == statusOfOrder
          ? _value.statusOfOrder
          : statusOfOrder // ignore: cast_nullable_to_non_nullable
              as StatusOfOrder,
    ));
  }
}

/// @nodoc

class _$ReviewItemsStateImpl
    with DiagnosticableTreeMixin
    implements _ReviewItemsState {
  const _$ReviewItemsStateImpl(
      {this.status = ScreenStatus.initial,
      this.statusOfOrder = StatusOfOrder.deliveyWaiting});

  @override
  @JsonKey()
  final ScreenStatus status;
  @override
  @JsonKey()
  final StatusOfOrder statusOfOrder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewItemsState(status: $status, statusOfOrder: $statusOfOrder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewItemsState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('statusOfOrder', statusOfOrder));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewItemsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusOfOrder, statusOfOrder) ||
                other.statusOfOrder == statusOfOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, statusOfOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewItemsStateImplCopyWith<_$ReviewItemsStateImpl> get copyWith =>
      __$$ReviewItemsStateImplCopyWithImpl<_$ReviewItemsStateImpl>(
          this, _$identity);
}

abstract class _ReviewItemsState implements ReviewItemsState {
  const factory _ReviewItemsState(
      {final ScreenStatus status,
      final StatusOfOrder statusOfOrder}) = _$ReviewItemsStateImpl;

  @override
  ScreenStatus get status;
  @override
  StatusOfOrder get statusOfOrder;
  @override
  @JsonKey(ignore: true)
  _$$ReviewItemsStateImplCopyWith<_$ReviewItemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
