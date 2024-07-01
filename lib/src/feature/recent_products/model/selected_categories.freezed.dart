// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedCategories _$SelectedCategoriesFromJson(Map<String, dynamic> json) {
  return _SelectedCategories.fromJson(json);
}

/// @nodoc
mixin _$SelectedCategories {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedCategoriesCopyWith<SelectedCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCategoriesCopyWith<$Res> {
  factory $SelectedCategoriesCopyWith(
          SelectedCategories value, $Res Function(SelectedCategories) then) =
      _$SelectedCategoriesCopyWithImpl<$Res, SelectedCategories>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SelectedCategoriesCopyWithImpl<$Res, $Val extends SelectedCategories>
    implements $SelectedCategoriesCopyWith<$Res> {
  _$SelectedCategoriesCopyWithImpl(this._value, this._then);

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
abstract class _$$SelectedCategoriesImplCopyWith<$Res>
    implements $SelectedCategoriesCopyWith<$Res> {
  factory _$$SelectedCategoriesImplCopyWith(_$SelectedCategoriesImpl value,
          $Res Function(_$SelectedCategoriesImpl) then) =
      __$$SelectedCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$SelectedCategoriesImplCopyWithImpl<$Res>
    extends _$SelectedCategoriesCopyWithImpl<$Res, _$SelectedCategoriesImpl>
    implements _$$SelectedCategoriesImplCopyWith<$Res> {
  __$$SelectedCategoriesImplCopyWithImpl(_$SelectedCategoriesImpl _value,
      $Res Function(_$SelectedCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SelectedCategoriesImpl(
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
class _$SelectedCategoriesImpl implements _SelectedCategories {
  const _$SelectedCategoriesImpl({required this.id, required this.name});

  factory _$SelectedCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedCategoriesImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'SelectedCategories(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedCategoriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedCategoriesImplCopyWith<_$SelectedCategoriesImpl> get copyWith =>
      __$$SelectedCategoriesImplCopyWithImpl<_$SelectedCategoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedCategoriesImplToJson(
      this,
    );
  }
}

abstract class _SelectedCategories implements SelectedCategories {
  const factory _SelectedCategories(
      {required final int id,
      required final String name}) = _$SelectedCategoriesImpl;

  factory _SelectedCategories.fromJson(Map<String, dynamic> json) =
      _$SelectedCategoriesImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SelectedCategoriesImplCopyWith<_$SelectedCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
