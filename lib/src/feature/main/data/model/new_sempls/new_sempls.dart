import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'new_sempls.freezed.dart';
part 'new_sempls.g.dart';

@freezed
class NewSempls with _$NewSempls {
  const factory NewSempls({
    @Default(<Data>[]) List<Data> data,
  }) = _NewSempls;

  factory NewSempls.fromJson(Map<String, Object?> json) =>
      _$NewSemplsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String photo,
    @Default(Category()) Category category,
    @Default(Category()) Category subcategory,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
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
