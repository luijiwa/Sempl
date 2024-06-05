// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyModelImpl _$$SurveyModelImplFromJson(Map<String, dynamic> json) =>
    _$SurveyModelImpl(
      login: json['login'] as String? ?? '',
      password: json['password'] as String? ?? 'default',
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      birthdate: json['birthdate'] as String? ?? '',
      appName: json['app_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      address: json['address'] as String? ?? '',
      peopleLivingWith: json['people_living_with'] as int? ?? 0,
      hasChildren: json['has_children'] as bool? ?? false,
      pets: json['pets'] as String? ?? '',
      averageMonthlyIncome: json['average_monthly_income'] as int? ?? 0,
      percentageSpentOnCosmetics:
          json['percentage_spent_on_cosmetics'] as int? ?? 0,
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
      wantAdvertising: json['want_advertising'] as bool? ?? true,
      acceptPolicy: json['accept_policy'] as bool? ?? true,
    );

Map<String, dynamic> _$$SurveyModelImplToJson(_$SurveyModelImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'app_name': instance.appName,
      'email': instance.email,
      'address': instance.address,
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
      'want_advertising': instance.wantAdvertising,
      'accept_policy': instance.acceptPolicy,
    };
