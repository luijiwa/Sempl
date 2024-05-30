// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      city: json['city'] as String? ?? '',
      street: json['street'] as String? ?? '',
      house: json['house'] as String? ?? '',
      apartment: json['apartment'] as String? ?? '',
      entrance: json['entrance'] as String? ?? '',
      zipCode: json['zip_code'] as String? ?? '',
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
      'apartment': instance.apartment,
      'entrance': instance.entrance,
      'zip_code': instance.zipCode,
    };
