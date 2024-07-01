import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_categories.freezed.dart';
part 'selected_categories.g.dart';

@freezed
class SelectedCategories with _$SelectedCategories {
  const factory SelectedCategories({
    required int id,
    required String name,
  }) = _SelectedCategories;

  factory SelectedCategories.fromJson(Map<String, Object?> json) =>
      _$SelectedCategoriesFromJson(json);
}
