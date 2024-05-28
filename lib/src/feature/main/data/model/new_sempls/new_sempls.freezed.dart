// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_sempls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewSempls _$NewSemplsFromJson(Map<String, dynamic> json) {
  return _NewSempls.fromJson(json);
}

/// @nodoc
mixin _$NewSempls {
  List<NewSemplsData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewSemplsCopyWith<NewSempls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewSemplsCopyWith<$Res> {
  factory $NewSemplsCopyWith(NewSempls value, $Res Function(NewSempls) then) =
      _$NewSemplsCopyWithImpl<$Res, NewSempls>;
  @useResult
  $Res call({List<NewSemplsData> data});
}

/// @nodoc
class _$NewSemplsCopyWithImpl<$Res, $Val extends NewSempls>
    implements $NewSemplsCopyWith<$Res> {
  _$NewSemplsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewSemplsData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewSemplsImplCopyWith<$Res>
    implements $NewSemplsCopyWith<$Res> {
  factory _$$NewSemplsImplCopyWith(
          _$NewSemplsImpl value, $Res Function(_$NewSemplsImpl) then) =
      __$$NewSemplsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewSemplsData> data});
}

/// @nodoc
class __$$NewSemplsImplCopyWithImpl<$Res>
    extends _$NewSemplsCopyWithImpl<$Res, _$NewSemplsImpl>
    implements _$$NewSemplsImplCopyWith<$Res> {
  __$$NewSemplsImplCopyWithImpl(
      _$NewSemplsImpl _value, $Res Function(_$NewSemplsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NewSemplsImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewSemplsData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewSemplsImpl with DiagnosticableTreeMixin implements _NewSempls {
  const _$NewSemplsImpl(
      {final List<NewSemplsData> data = const <NewSemplsData>[]})
      : _data = data;

  factory _$NewSemplsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewSemplsImplFromJson(json);

  final List<NewSemplsData> _data;
  @override
  @JsonKey()
  List<NewSemplsData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewSempls(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewSempls'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSemplsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSemplsImplCopyWith<_$NewSemplsImpl> get copyWith =>
      __$$NewSemplsImplCopyWithImpl<_$NewSemplsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewSemplsImplToJson(
      this,
    );
  }
}

abstract class _NewSempls implements NewSempls {
  const factory _NewSempls({final List<NewSemplsData> data}) = _$NewSemplsImpl;

  factory _NewSempls.fromJson(Map<String, dynamic> json) =
      _$NewSemplsImpl.fromJson;

  @override
  List<NewSemplsData> get data;
  @override
  @JsonKey(ignore: true)
  _$$NewSemplsImplCopyWith<_$NewSemplsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewSemplsData _$NewSemplsDataFromJson(Map<String, dynamic> json) {
  return _NewSemplsData.fromJson(json);
}

/// @nodoc
mixin _$NewSemplsData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Category get subcategory => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get countRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewSemplsDataCopyWith<NewSemplsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewSemplsDataCopyWith<$Res> {
  factory $NewSemplsDataCopyWith(
          NewSemplsData value, $Res Function(NewSemplsData) then) =
      _$NewSemplsDataCopyWithImpl<$Res, NewSemplsData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String photo,
      Category category,
      Category subcategory,
      String createdAt,
      String updatedAt,
      double rating,
      int countRating});

  $CategoryCopyWith<$Res> get category;
  $CategoryCopyWith<$Res> get subcategory;
}

/// @nodoc
class _$NewSemplsDataCopyWithImpl<$Res, $Val extends NewSemplsData>
    implements $NewSemplsDataCopyWith<$Res> {
  _$NewSemplsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photo = null,
    Object? category = null,
    Object? subcategory = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? rating = null,
    Object? countRating = null,
  }) {
    return _then(_value.copyWith(
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
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Category,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      countRating: null == countRating
          ? _value.countRating
          : countRating // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get subcategory {
    return $CategoryCopyWith<$Res>(_value.subcategory, (value) {
      return _then(_value.copyWith(subcategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewSemplsDataImplCopyWith<$Res>
    implements $NewSemplsDataCopyWith<$Res> {
  factory _$$NewSemplsDataImplCopyWith(
          _$NewSemplsDataImpl value, $Res Function(_$NewSemplsDataImpl) then) =
      __$$NewSemplsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String photo,
      Category category,
      Category subcategory,
      String createdAt,
      String updatedAt,
      double rating,
      int countRating});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $CategoryCopyWith<$Res> get subcategory;
}

/// @nodoc
class __$$NewSemplsDataImplCopyWithImpl<$Res>
    extends _$NewSemplsDataCopyWithImpl<$Res, _$NewSemplsDataImpl>
    implements _$$NewSemplsDataImplCopyWith<$Res> {
  __$$NewSemplsDataImplCopyWithImpl(
      _$NewSemplsDataImpl _value, $Res Function(_$NewSemplsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photo = null,
    Object? category = null,
    Object? subcategory = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? rating = null,
    Object? countRating = null,
  }) {
    return _then(_$NewSemplsDataImpl(
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
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Category,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      countRating: null == countRating
          ? _value.countRating
          : countRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewSemplsDataImpl
    with DiagnosticableTreeMixin
    implements _NewSemplsData {
  const _$NewSemplsDataImpl(
      {this.id = 0,
      this.name = '',
      this.description = '',
      this.photo = '',
      this.category = const Category(),
      this.subcategory = const Category(),
      this.createdAt = '',
      this.updatedAt = '',
      this.rating = 0,
      this.countRating = 0});

  factory _$NewSemplsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewSemplsDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String photo;
  @override
  @JsonKey()
  final Category category;
  @override
  @JsonKey()
  final Category subcategory;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int countRating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewSemplsData(id: $id, name: $name, description: $description, photo: $photo, category: $category, subcategory: $subcategory, createdAt: $createdAt, updatedAt: $updatedAt, rating: $rating, countRating: $countRating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewSemplsData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subcategory', subcategory))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('countRating', countRating));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSemplsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.countRating, countRating) ||
                other.countRating == countRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, photo,
      category, subcategory, createdAt, updatedAt, rating, countRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSemplsDataImplCopyWith<_$NewSemplsDataImpl> get copyWith =>
      __$$NewSemplsDataImplCopyWithImpl<_$NewSemplsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewSemplsDataImplToJson(
      this,
    );
  }
}

abstract class _NewSemplsData implements NewSemplsData {
  const factory _NewSemplsData(
      {final int id,
      final String name,
      final String description,
      final String photo,
      final Category category,
      final Category subcategory,
      final String createdAt,
      final String updatedAt,
      final double rating,
      final int countRating}) = _$NewSemplsDataImpl;

  factory _NewSemplsData.fromJson(Map<String, dynamic> json) =
      _$NewSemplsDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get photo;
  @override
  Category get category;
  @override
  Category get subcategory;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  double get rating;
  @override
  int get countRating;
  @override
  @JsonKey(ignore: true)
  _$$NewSemplsDataImplCopyWith<_$NewSemplsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl with DiagnosticableTreeMixin implements _Category {
  const _$CategoryImpl({this.id = 0, this.name = ''});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Category(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Category'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({final int id, final String name}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
