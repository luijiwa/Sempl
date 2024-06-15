import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    @Default(Data()) Data data,
  }) = _Item;

  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);
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
    @Default(false) bool isFavorite,
  }) = _Data;
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);

  const Data._();

  /// Converts name to upperCase
  String get upperCaseName => name.toUpperCase();
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
