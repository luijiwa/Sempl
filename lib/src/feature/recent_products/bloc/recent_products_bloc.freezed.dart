// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentProductsEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCategories value) loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentProductsEventCopyWith<$Res> {
  factory $RecentProductsEventCopyWith(
          RecentProductsEvent value, $Res Function(RecentProductsEvent) then) =
      _$RecentProductsEventCopyWithImpl<$Res, RecentProductsEvent>;
}

/// @nodoc
class _$RecentProductsEventCopyWithImpl<$Res, $Val extends RecentProductsEvent>
    implements $RecentProductsEventCopyWith<$Res> {
  _$RecentProductsEventCopyWithImpl(this._value, this._then);

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
    extends _$RecentProductsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'RecentProductsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecentProductsEvent.started'));
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
    required TResult Function(_LoadCategories value) loadCategories,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RecentProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadCategoriesImplCopyWith<$Res> {
  factory _$$LoadCategoriesImplCopyWith(_$LoadCategoriesImpl value,
          $Res Function(_$LoadCategoriesImpl) then) =
      __$$LoadCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCategoriesImplCopyWithImpl<$Res>
    extends _$RecentProductsEventCopyWithImpl<$Res, _$LoadCategoriesImpl>
    implements _$$LoadCategoriesImplCopyWith<$Res> {
  __$$LoadCategoriesImplCopyWithImpl(
      _$LoadCategoriesImpl _value, $Res Function(_$LoadCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCategoriesImpl
    with DiagnosticableTreeMixin
    implements _LoadCategories {
  const _$LoadCategoriesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecentProductsEvent.loadCategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RecentProductsEvent.loadCategories'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCategories value) loadCategories,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(this);
    }
    return orElse();
  }
}

abstract class _LoadCategories implements RecentProductsEvent {
  const factory _LoadCategories() = _$LoadCategoriesImpl;
}

/// @nodoc
mixin _$RecentProductsState {
  ScreenStatus get status => throw _privateConstructorUsedError;
  List<NewSemplsData> get newSempls => throw _privateConstructorUsedError;
  ScreenStatus get screenCategoriesStatus => throw _privateConstructorUsedError;
  List<CategoriesData> get categories => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  String get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentProductsStateCopyWith<RecentProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentProductsStateCopyWith<$Res> {
  factory $RecentProductsStateCopyWith(
          RecentProductsState value, $Res Function(RecentProductsState) then) =
      _$RecentProductsStateCopyWithImpl<$Res, RecentProductsState>;
  @useResult
  $Res call(
      {ScreenStatus status,
      List<NewSemplsData> newSempls,
      ScreenStatus screenCategoriesStatus,
      List<CategoriesData> categories,
      String searchQuery,
      String errorText});
}

/// @nodoc
class _$RecentProductsStateCopyWithImpl<$Res, $Val extends RecentProductsState>
    implements $RecentProductsStateCopyWith<$Res> {
  _$RecentProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? newSempls = null,
    Object? screenCategoriesStatus = null,
    Object? categories = null,
    Object? searchQuery = null,
    Object? errorText = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      newSempls: null == newSempls
          ? _value.newSempls
          : newSempls // ignore: cast_nullable_to_non_nullable
              as List<NewSemplsData>,
      screenCategoriesStatus: null == screenCategoriesStatus
          ? _value.screenCategoriesStatus
          : screenCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesData>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentProductsStateImplCopyWith<$Res>
    implements $RecentProductsStateCopyWith<$Res> {
  factory _$$RecentProductsStateImplCopyWith(_$RecentProductsStateImpl value,
          $Res Function(_$RecentProductsStateImpl) then) =
      __$$RecentProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus status,
      List<NewSemplsData> newSempls,
      ScreenStatus screenCategoriesStatus,
      List<CategoriesData> categories,
      String searchQuery,
      String errorText});
}

/// @nodoc
class __$$RecentProductsStateImplCopyWithImpl<$Res>
    extends _$RecentProductsStateCopyWithImpl<$Res, _$RecentProductsStateImpl>
    implements _$$RecentProductsStateImplCopyWith<$Res> {
  __$$RecentProductsStateImplCopyWithImpl(_$RecentProductsStateImpl _value,
      $Res Function(_$RecentProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? newSempls = null,
    Object? screenCategoriesStatus = null,
    Object? categories = null,
    Object? searchQuery = null,
    Object? errorText = null,
  }) {
    return _then(_$RecentProductsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      newSempls: null == newSempls
          ? _value._newSempls
          : newSempls // ignore: cast_nullable_to_non_nullable
              as List<NewSemplsData>,
      screenCategoriesStatus: null == screenCategoriesStatus
          ? _value.screenCategoriesStatus
          : screenCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesData>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecentProductsStateImpl
    with DiagnosticableTreeMixin
    implements _RecentProductsState {
  const _$RecentProductsStateImpl(
      {this.status = ScreenStatus.initial,
      final List<NewSemplsData> newSempls = const <NewSemplsData>[],
      this.screenCategoriesStatus = ScreenStatus.initial,
      final List<CategoriesData> categories = const <CategoriesData>[],
      this.searchQuery = '',
      this.errorText = ''})
      : _newSempls = newSempls,
        _categories = categories;

  @override
  @JsonKey()
  final ScreenStatus status;
  final List<NewSemplsData> _newSempls;
  @override
  @JsonKey()
  List<NewSemplsData> get newSempls {
    if (_newSempls is EqualUnmodifiableListView) return _newSempls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newSempls);
  }

  @override
  @JsonKey()
  final ScreenStatus screenCategoriesStatus;
  final List<CategoriesData> _categories;
  @override
  @JsonKey()
  List<CategoriesData> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final String errorText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecentProductsState(status: $status, newSempls: $newSempls, screenCategoriesStatus: $screenCategoriesStatus, categories: $categories, searchQuery: $searchQuery, errorText: $errorText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecentProductsState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('newSempls', newSempls))
      ..add(
          DiagnosticsProperty('screenCategoriesStatus', screenCategoriesStatus))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('searchQuery', searchQuery))
      ..add(DiagnosticsProperty('errorText', errorText));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentProductsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._newSempls, _newSempls) &&
            (identical(other.screenCategoriesStatus, screenCategoriesStatus) ||
                other.screenCategoriesStatus == screenCategoriesStatus) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_newSempls),
      screenCategoriesStatus,
      const DeepCollectionEquality().hash(_categories),
      searchQuery,
      errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentProductsStateImplCopyWith<_$RecentProductsStateImpl> get copyWith =>
      __$$RecentProductsStateImplCopyWithImpl<_$RecentProductsStateImpl>(
          this, _$identity);
}

abstract class _RecentProductsState implements RecentProductsState {
  const factory _RecentProductsState(
      {final ScreenStatus status,
      final List<NewSemplsData> newSempls,
      final ScreenStatus screenCategoriesStatus,
      final List<CategoriesData> categories,
      final String searchQuery,
      final String errorText}) = _$RecentProductsStateImpl;

  @override
  ScreenStatus get status;
  @override
  List<NewSemplsData> get newSempls;
  @override
  ScreenStatus get screenCategoriesStatus;
  @override
  List<CategoriesData> get categories;
  @override
  String get searchQuery;
  @override
  String get errorText;
  @override
  @JsonKey(ignore: true)
  _$$RecentProductsStateImplCopyWith<_$RecentProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
