import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'categories.freezed.dart';
part 'categories.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({
    @Default(<Data>[]) List<Data> data,
  }) = _Categories;

  factory Categories.fromJson(Map<String, Object?> json) =>
      _$CategoriesFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @Default(0) int id,
    @Default('') String name,
    @Default(<Subcategories>[]) List<Subcategories> subcategories,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

@freezed
class Subcategories with _$Subcategories {
  const factory Subcategories({
    @Default(0) int id,
    @Default('') String name,
  }) = _Subcategories;

  factory Subcategories.fromJson(Map<String, Object?> json) =>
      _$SubcategoriesFromJson(json);
}
