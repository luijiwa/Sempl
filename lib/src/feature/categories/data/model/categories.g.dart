// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Data>[],
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) => Subcategories.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Subcategories>[],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subcategories': instance.subcategories,
    };

_$SubcategoriesImpl _$$SubcategoriesImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoriesImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$SubcategoriesImplToJson(_$SubcategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
