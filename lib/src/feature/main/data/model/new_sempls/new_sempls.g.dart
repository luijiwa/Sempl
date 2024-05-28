// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_sempls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewSemplsImpl _$$NewSemplsImplFromJson(Map<String, dynamic> json) =>
    _$NewSemplsImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => NewSemplsData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NewSemplsData>[],
    );

Map<String, dynamic> _$$NewSemplsImplToJson(_$NewSemplsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$NewSemplsDataImpl _$$NewSemplsDataImplFromJson(Map<String, dynamic> json) =>
    _$NewSemplsDataImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      photo: json['photo'] as String? ?? '',
      category: json['category'] == null
          ? const Category()
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? const Category()
          : Category.fromJson(json['subcategory'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      countRating: json['count_rating'] as int? ?? 0,
    );

Map<String, dynamic> _$$NewSemplsDataImplToJson(_$NewSemplsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photo': instance.photo,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'rating': instance.rating,
      'count_rating': instance.countRating,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
