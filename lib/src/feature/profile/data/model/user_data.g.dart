// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      user: json['user'] == null
          ? const User()
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int? ?? 0,
      login: json['login'] as String? ?? '',
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      birthdate: json['birthdate'] as String? ?? '',
      appName: json['app_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      address: json['address'] as String? ?? '',
      role: json['role'] as int? ?? 0,
      wantAdvertising: json['want_advertising'] as int? ?? 0,
      acceptPolicy: json['accept_policy'] as int? ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      peopleLivingWith: json['people_living_with'] as int? ?? 0,
      hasChildren: json['has_children'] as int? ?? 0,
      pets: json['pets'] as String? ?? '',
      averageMonthlyIncome: json['average_monthly_income'] as String? ?? '',
      percentageSpentOnCosmetics:
          json['percentage_spent_on_cosmetics'] as String? ?? '',
      vkProfile: json['vk_profile'] as String? ?? '',
      telegramProfile: json['telegram_profile'] as String? ?? '',
      profilePhoto: json['profile_photo'] as String? ?? '',
      deliveryAddress: json['delivery_address'] as String? ?? '',
      city: json['city'] as String? ?? '',
      street: json['street'] as String? ?? '',
      houseNumber: json['house_number'] as String? ?? '',
      apartmentNumber: json['apartment_number'] as String? ?? '',
      entrance: json['entrance'] as String? ?? '',
      postalCode: json['postal_code'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      fullAddress: json['full_address'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'app_name': instance.appName,
      'email': instance.email,
      'address': instance.address,
      'role': instance.role,
      'want_advertising': instance.wantAdvertising,
      'accept_policy': instance.acceptPolicy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'people_living_with': instance.peopleLivingWith,
      'has_children': instance.hasChildren,
      'pets': instance.pets,
      'average_monthly_income': instance.averageMonthlyIncome,
      'percentage_spent_on_cosmetics': instance.percentageSpentOnCosmetics,
      'vk_profile': instance.vkProfile,
      'telegram_profile': instance.telegramProfile,
      'profile_photo': instance.profilePhoto,
      'delivery_address': instance.deliveryAddress,
      'city': instance.city,
      'street': instance.street,
      'house_number': instance.houseNumber,
      'apartment_number': instance.apartmentNumber,
      'entrance': instance.entrance,
      'postal_code': instance.postalCode,
      'phone': instance.phone,
      'full_address': instance.fullAddress,
    };
