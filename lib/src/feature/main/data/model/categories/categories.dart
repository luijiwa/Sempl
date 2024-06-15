import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({
    @Default(<CategoriesData>[]) List<CategoriesData> data,
  }) = _Categories;

  factory Categories.fromJson(Map<String, Object?> json) =>
      _$CategoriesFromJson(json);
}

@freezed
class CategoriesData with _$CategoriesData {
  const factory CategoriesData({
    @Default(0) int id,
    @Default('') String name,
    @Default(<Subcategories>[]) List<Subcategories> subcategories,
  }) = _CategoriesData;

  factory CategoriesData.fromJson(Map<String, Object?> json) =>
      _$CategoriesDataFromJson(json);
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
