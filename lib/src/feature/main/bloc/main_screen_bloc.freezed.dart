// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainScreenEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickCategory value) pickCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickCategory value)? pickCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickCategory value)? pickCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res, MainScreenEvent>;
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res, $Val extends MainScreenEvent>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

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
    extends _$MainScreenEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'MainScreenEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainScreenEvent.started'));
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
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickCategory value) pickCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickCategory value)? pickCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickCategory value)? pickCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainScreenEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchCategoryImplCopyWith<$Res> {
  factory _$$SearchCategoryImplCopyWith(_$SearchCategoryImpl value,
          $Res Function(_$SearchCategoryImpl) then) =
      __$$SearchCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCategoryImplCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$SearchCategoryImpl>
    implements _$$SearchCategoryImplCopyWith<$Res> {
  __$$SearchCategoryImplCopyWithImpl(
      _$SearchCategoryImpl _value, $Res Function(_$SearchCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCategoryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCategoryImpl
    with DiagnosticableTreeMixin
    implements _SearchCategory {
  const _$SearchCategoryImpl({required this.query});

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainScreenEvent.searchCategory(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainScreenEvent.searchCategory'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoryImplCopyWith<_$SearchCategoryImpl> get copyWith =>
      __$$SearchCategoryImplCopyWithImpl<_$SearchCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickCategory value) pickCategory,
  }) {
    return searchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickCategory value)? pickCategory,
  }) {
    return searchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickCategory value)? pickCategory,
    required TResult orElse(),
  }) {
    if (searchCategory != null) {
      return searchCategory(this);
    }
    return orElse();
  }
}

abstract class _SearchCategory implements MainScreenEvent {
  const factory _SearchCategory({required final String query}) =
      _$SearchCategoryImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchCategoryImplCopyWith<_$SearchCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickCategoryImplCopyWith<$Res> {
  factory _$$PickCategoryImplCopyWith(
          _$PickCategoryImpl value, $Res Function(_$PickCategoryImpl) then) =
      __$$PickCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickCategoryImplCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$PickCategoryImpl>
    implements _$$PickCategoryImplCopyWith<$Res> {
  __$$PickCategoryImplCopyWithImpl(
      _$PickCategoryImpl _value, $Res Function(_$PickCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickCategoryImpl with DiagnosticableTreeMixin implements _PickCategory {
  const _$PickCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainScreenEvent.pickCategory()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainScreenEvent.pickCategory'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickCategory value) pickCategory,
  }) {
    return pickCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickCategory value)? pickCategory,
  }) {
    return pickCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickCategory value)? pickCategory,
    required TResult orElse(),
  }) {
    if (pickCategory != null) {
      return pickCategory(this);
    }
    return orElse();
  }
}

abstract class _PickCategory implements MainScreenEvent {
  const factory _PickCategory() = _$PickCategoryImpl;
}

/// @nodoc
mixin _$MainScreenState {
  ScreenStatus get screenStatus => throw _privateConstructorUsedError;
  List<NewSemplsData> get newSempls => throw _privateConstructorUsedError;
  ScreenStatus get screenCategoriesStatus => throw _privateConstructorUsedError;
  List<CategoriesData> get categories => throw _privateConstructorUsedError;
  List<CategoriesData> get searchResults => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      List<NewSemplsData> newSempls,
      ScreenStatus screenCategoriesStatus,
      List<CategoriesData> categories,
      List<CategoriesData> searchResults,
      String searchQuery});
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? newSempls = null,
    Object? screenCategoriesStatus = null,
    Object? categories = null,
    Object? searchResults = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
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
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<CategoriesData>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainScreenStateImplCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$MainScreenStateImplCopyWith(_$MainScreenStateImpl value,
          $Res Function(_$MainScreenStateImpl) then) =
      __$$MainScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      List<NewSemplsData> newSempls,
      ScreenStatus screenCategoriesStatus,
      List<CategoriesData> categories,
      List<CategoriesData> searchResults,
      String searchQuery});
}

/// @nodoc
class __$$MainScreenStateImplCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$MainScreenStateImpl>
    implements _$$MainScreenStateImplCopyWith<$Res> {
  __$$MainScreenStateImplCopyWithImpl(
      _$MainScreenStateImpl _value, $Res Function(_$MainScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? newSempls = null,
    Object? screenCategoriesStatus = null,
    Object? categories = null,
    Object? searchResults = null,
    Object? searchQuery = null,
  }) {
    return _then(_$MainScreenStateImpl(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
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
      searchResults: null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<CategoriesData>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainScreenStateImpl extends _MainScreenState
    with DiagnosticableTreeMixin {
  const _$MainScreenStateImpl(
      {this.screenStatus = ScreenStatus.initial,
      final List<NewSemplsData> newSempls = const <NewSemplsData>[],
      this.screenCategoriesStatus = ScreenStatus.initial,
      final List<CategoriesData> categories = const <CategoriesData>[],
      final List<CategoriesData> searchResults = const <CategoriesData>[],
      this.searchQuery = ''})
      : _newSempls = newSempls,
        _categories = categories,
        _searchResults = searchResults,
        super._();

  @override
  @JsonKey()
  final ScreenStatus screenStatus;
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

  final List<CategoriesData> _searchResults;
  @override
  @JsonKey()
  List<CategoriesData> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainScreenState(screenStatus: $screenStatus, newSempls: $newSempls, screenCategoriesStatus: $screenCategoriesStatus, categories: $categories, searchResults: $searchResults, searchQuery: $searchQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainScreenState'))
      ..add(DiagnosticsProperty('screenStatus', screenStatus))
      ..add(DiagnosticsProperty('newSempls', newSempls))
      ..add(
          DiagnosticsProperty('screenCategoriesStatus', screenCategoriesStatus))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('searchResults', searchResults))
      ..add(DiagnosticsProperty('searchQuery', searchQuery));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainScreenStateImpl &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            const DeepCollectionEquality()
                .equals(other._newSempls, _newSempls) &&
            (identical(other.screenCategoriesStatus, screenCategoriesStatus) ||
                other.screenCategoriesStatus == screenCategoriesStatus) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screenStatus,
      const DeepCollectionEquality().hash(_newSempls),
      screenCategoriesStatus,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_searchResults),
      searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      __$$MainScreenStateImplCopyWithImpl<_$MainScreenStateImpl>(
          this, _$identity);
}

abstract class _MainScreenState extends MainScreenState {
  const factory _MainScreenState(
      {final ScreenStatus screenStatus,
      final List<NewSemplsData> newSempls,
      final ScreenStatus screenCategoriesStatus,
      final List<CategoriesData> categories,
      final List<CategoriesData> searchResults,
      final String searchQuery}) = _$MainScreenStateImpl;
  const _MainScreenState._() : super._();

  @override
  ScreenStatus get screenStatus;
  @override
  List<NewSemplsData> get newSempls;
  @override
  ScreenStatus get screenCategoriesStatus;
  @override
  List<CategoriesData> get categories;
  @override
  List<CategoriesData> get searchResults;
  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
