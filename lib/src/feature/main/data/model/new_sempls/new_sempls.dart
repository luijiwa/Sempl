import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'new_sempls.freezed.dart';
part 'new_sempls.g.dart';

@freezed
class NewSempls with _$NewSempls {
  const factory NewSempls({
    @Default(<NewSemplsData>[]) List<NewSemplsData> data,
  }) = _NewSempls;

  factory NewSempls.fromJson(Map<String, Object?> json) =>
      _$NewSemplsFromJson(json);
}

@freezed
class NewSemplsData with _$NewSemplsData {
  const factory NewSemplsData({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String photo,
    @Default(Category()) Category category,
    @Default(Category()) Category subcategory,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default(0) double rating,
    @Default(0) int countRating,
  }) = _NewSemplsData;

  factory NewSemplsData.fromJson(Map<String, Object?> json) =>
      _$NewSemplsDataFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @Default(0) int id,
    @Default('') String name,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}
