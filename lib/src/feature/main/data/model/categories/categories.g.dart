// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoriesData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CategoriesData>[],
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CategoriesDataImpl _$$CategoriesDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesDataImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) => Subcategories.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Subcategories>[],
      isSelected: json['is_selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$CategoriesDataImplToJson(
        _$CategoriesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subcategories': instance.subcategories,
      'is_selected': instance.isSelected,
    };

_$SubcategoriesImpl _$$SubcategoriesImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoriesImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      isSelected: json['is_selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$SubcategoriesImplToJson(_$SubcategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_selected': instance.isSelected,
    };
