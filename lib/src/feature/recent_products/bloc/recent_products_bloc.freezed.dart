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
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickMainCategory value) searchPickMainCategory,
    required TResult Function(_PickSubCategory value) searchPickSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickMainCategory value)? searchPickMainCategory,
    TResult? Function(_PickSubCategory value)? searchPickSubCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickMainCategory value)? searchPickMainCategory,
    TResult Function(_PickSubCategory value)? searchPickSubCategory,
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
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickMainCategory value) searchPickMainCategory,
    required TResult Function(_PickSubCategory value) searchPickSubCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickMainCategory value)? searchPickMainCategory,
    TResult? Function(_PickSubCategory value)? searchPickSubCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickMainCategory value)? searchPickMainCategory,
    TResult Function(_PickSubCategory value)? searchPickSubCategory,
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
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickMainCategory value) searchPickMainCategory,
    required TResult Function(_PickSubCategory value) searchPickSubCategory,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickMainCategory value)? searchPickMainCategory,
    TResult? Function(_PickSubCategory value)? searchPickSubCategory,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickMainCategory value)? searchPickMainCategory,
    TResult Function(_PickSubCategory value)? searchPickSubCategory,
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
abstract class _$$SearchCategoryImplCopyWith<$Res> {
  factory _$$SearchCategoryImplCopyWith(_$SearchCategoryImpl value,
          $Res Function(_$SearchCategoryImpl) then) =
      __$$SearchCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCategoryImplCopyWithImpl<$Res>
    extends _$RecentProductsEventCopyWithImpl<$Res, _$SearchCategoryImpl>
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
      null == query
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
  const _$SearchCategoryImpl(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecentProductsEvent.searchCategory(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecentProductsEvent.searchCategory'))
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
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickMainCategory value) searchPickMainCategory,
    required TResult Function(_PickSubCategory value) searchPickSubCategory,
  }) {
    return searchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickMainCategory value)? searchPickMainCategory,
    TResult? Function(_PickSubCategory value)? searchPickSubCategory,
  }) {
    return searchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickMainCategory value)? searchPickMainCategory,
    TResult Function(_PickSubCategory value)? searchPickSubCategory,
    required TResult orElse(),
  }) {
    if (searchCategory != null) {
      return searchCategory(this);
    }
    return orElse();
  }
}

abstract class _SearchCategory implements RecentProductsEvent {
  const factory _SearchCategory(final String query) = _$SearchCategoryImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchCategoryImplCopyWith<_$SearchCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickMainCategoryImplCopyWith<$Res> {
  factory _$$PickMainCategoryImplCopyWith(_$PickMainCategoryImpl value,
          $Res Function(_$PickMainCategoryImpl) then) =
      __$$PickMainCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PickMainCategoryImplCopyWithImpl<$Res>
    extends _$RecentProductsEventCopyWithImpl<$Res, _$PickMainCategoryImpl>
    implements _$$PickMainCategoryImplCopyWith<$Res> {
  __$$PickMainCategoryImplCopyWithImpl(_$PickMainCategoryImpl _value,
      $Res Function(_$PickMainCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$PickMainCategoryImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PickMainCategoryImpl
    with DiagnosticableTreeMixin
    implements _PickMainCategory {
  const _$PickMainCategoryImpl(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecentProductsEvent.searchPickMainCategory(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RecentProductsEvent.searchPickMainCategory'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickMainCategoryImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickMainCategoryImplCopyWith<_$PickMainCategoryImpl> get copyWith =>
      __$$PickMainCategoryImplCopyWithImpl<_$PickMainCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickMainCategory value) searchPickMainCategory,
    required TResult Function(_PickSubCategory value) searchPickSubCategory,
  }) {
    return searchPickMainCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickMainCategory value)? searchPickMainCategory,
    TResult? Function(_PickSubCategory value)? searchPickSubCategory,
  }) {
    return searchPickMainCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickMainCategory value)? searchPickMainCategory,
    TResult Function(_PickSubCategory value)? searchPickSubCategory,
    required TResult orElse(),
  }) {
    if (searchPickMainCategory != null) {
      return searchPickMainCategory(this);
    }
    return orElse();
  }
}

abstract class _PickMainCategory implements RecentProductsEvent {
  const factory _PickMainCategory(final int index) = _$PickMainCategoryImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$PickMainCategoryImplCopyWith<_$PickMainCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickSubCategoryImplCopyWith<$Res> {
  factory _$$PickSubCategoryImplCopyWith(_$PickSubCategoryImpl value,
          $Res Function(_$PickSubCategoryImpl) then) =
      __$$PickSubCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, int subIndex});
}

/// @nodoc
class __$$PickSubCategoryImplCopyWithImpl<$Res>
    extends _$RecentProductsEventCopyWithImpl<$Res, _$PickSubCategoryImpl>
    implements _$$PickSubCategoryImplCopyWith<$Res> {
  __$$PickSubCategoryImplCopyWithImpl(
      _$PickSubCategoryImpl _value, $Res Function(_$PickSubCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? subIndex = null,
  }) {
    return _then(_$PickSubCategoryImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == subIndex
          ? _value.subIndex
          : subIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PickSubCategoryImpl
    with DiagnosticableTreeMixin
    implements _PickSubCategory {
  const _$PickSubCategoryImpl(this.index, this.subIndex);

  @override
  final int index;
  @override
  final int subIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecentProductsEvent.searchPickSubCategory(index: $index, subIndex: $subIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RecentProductsEvent.searchPickSubCategory'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('subIndex', subIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickSubCategoryImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.subIndex, subIndex) ||
                other.subIndex == subIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, subIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickSubCategoryImplCopyWith<_$PickSubCategoryImpl> get copyWith =>
      __$$PickSubCategoryImplCopyWithImpl<_$PickSubCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_PickMainCategory value) searchPickMainCategory,
    required TResult Function(_PickSubCategory value) searchPickSubCategory,
  }) {
    return searchPickSubCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_PickMainCategory value)? searchPickMainCategory,
    TResult? Function(_PickSubCategory value)? searchPickSubCategory,
  }) {
    return searchPickSubCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_PickMainCategory value)? searchPickMainCategory,
    TResult Function(_PickSubCategory value)? searchPickSubCategory,
    required TResult orElse(),
  }) {
    if (searchPickSubCategory != null) {
      return searchPickSubCategory(this);
    }
    return orElse();
  }
}

abstract class _PickSubCategory implements RecentProductsEvent {
  const factory _PickSubCategory(final int index, final int subIndex) =
      _$PickSubCategoryImpl;

  int get index;
  int get subIndex;
  @JsonKey(ignore: true)
  _$$PickSubCategoryImplCopyWith<_$PickSubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecentProductsState {
  ScreenStatus get status => throw _privateConstructorUsedError;
  List<NewSemplsData> get newSempls => throw _privateConstructorUsedError;
  ScreenStatus get screenCategoriesStatus => throw _privateConstructorUsedError;
  List<CategoriesData> get categories => throw _privateConstructorUsedError;
  List<SelectedCategories> get selectedCategories =>
      throw _privateConstructorUsedError;
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
      List<SelectedCategories> selectedCategories,
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
    Object? selectedCategories = null,
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
      selectedCategories: null == selectedCategories
          ? _value.selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<SelectedCategories>,
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
      List<SelectedCategories> selectedCategories,
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
    Object? selectedCategories = null,
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
      selectedCategories: null == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<SelectedCategories>,
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
      final List<SelectedCategories> selectedCategories =
          const <SelectedCategories>[],
      this.searchQuery = '',
      this.errorText = ''})
      : _newSempls = newSempls,
        _categories = categories,
        _selectedCategories = selectedCategories;

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

  final List<SelectedCategories> _selectedCategories;
  @override
  @JsonKey()
  List<SelectedCategories> get selectedCategories {
    if (_selectedCategories is EqualUnmodifiableListView)
      return _selectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategories);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final String errorText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecentProductsState(status: $status, newSempls: $newSempls, screenCategoriesStatus: $screenCategoriesStatus, categories: $categories, selectedCategories: $selectedCategories, searchQuery: $searchQuery, errorText: $errorText)';
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
      ..add(DiagnosticsProperty('selectedCategories', selectedCategories))
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
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories) &&
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
      const DeepCollectionEquality().hash(_selectedCategories),
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
      final List<SelectedCategories> selectedCategories,
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
  List<SelectedCategories> get selectedCategories;
  @override
  String get searchQuery;
  @override
  String get errorText;
  @override
  @JsonKey(ignore: true)
  _$$RecentProductsStateImplCopyWith<_$RecentProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
