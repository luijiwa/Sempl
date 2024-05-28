import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  const factory Rating({
    @Default(<ReviewData>[]) List<ReviewData> data,
    @Default(Links()) Links links,
    @Default(Meta()) Meta meta,
  }) = _Rating;

  factory Rating.fromJson(Map<String, Object?> json) => _$RatingFromJson(json);
}

@freezed
class ReviewData with _$ReviewData {
  const factory ReviewData({
    @Default(0) int id,
    @Default(0) int userId,
    @Default('') String userName,
    @Default(0) int productId,
    @Default(0) double rating,
    @Default('') String comment,
    @Default('') String pros,
    @Default('') String cons,
    @Default('') String image,
    @Deprecated('Не понятен тип') @Default('') String media,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _ReviewData;

  const ReviewData._();
  String get userNameUpper => userName.toUpperCase();
  DateTime get createdAtInDate => DateTime.parse(createdAt);
  String get created =>
      "${createdAtInDate.day.toString().padLeft(2, '0')}/${createdAtInDate.month.toString().padLeft(2, '0')}/${createdAtInDate.year.toString()}";
  List<String> get prosList => pros
      .split(',')
      .map((e) => e.trim())
      .toList()
      .where((element) => element.isNotEmpty)
      .toList();

  factory ReviewData.fromJson(Map<String, Object?> json) =>
      _$ReviewDataFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    @Default('') String first,
    @Default('') String last,
    @Deprecated('Не понятен тип на бэке null') @Default('') String prev,
    @Deprecated('Не понятен тип на бэке null') @Default('') String next,
  }) = _Links;

  factory Links.fromJson(Map<String, Object?> json) => _$LinksFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @Default(0) int currentPage,
    @Default(0) int from,
    @Default(0) int lastPage,
    @Default(<LinksData>[]) List<LinksData> links,
    @Default('') String path,
    @Default(0) int perPage,
    @Default(0) int to,
    @Default(0) int total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, Object?> json) => _$MetaFromJson(json);
}

@freezed
class LinksData with _$LinksData {
  const factory LinksData({
    @Default('') String url,
    @Default('') String label,
    @Default(false) bool active,
  }) = _LinksData;

  factory LinksData.fromJson(Map<String, Object?> json) =>
      _$LinksDataFromJson(json);
}
