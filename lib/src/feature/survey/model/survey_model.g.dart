// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyModelImpl _$$SurveyModelImplFromJson(Map<String, dynamic> json) =>
    _$SurveyModelImpl(
      login: json['login'] as String? ?? '',
      password: json['password'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      birthdate: json['birthdate'] as String? ?? '',
      appName: json['appName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      address: json['address'] as String? ?? '',
      role: json['role'] as String? ?? '',
      peopleLivingWith: json['peopleLivingWith'] as int? ?? 0,
      hasChildren: json['hasChildren'] as bool? ?? false,
      pets: json['pets'] as String? ?? '',
      averageMonthlyIncome: json['averageMonthlyIncome'] as int? ?? 0,
      percentageSpentOnCosmetics:
          json['percentageSpentOnCosmetics'] as int? ?? 0,
      vkProfile: json['vkProfile'] as String? ?? '',
      telegramProfile: json['telegramProfile'] as String? ?? '',
      deliveryAddress: json['deliveryAddress'] as String? ?? '',
      city: json['city'] as String? ?? '',
      street: json['street'] as String? ?? '',
      houseNumber: json['houseNumber'] as String? ?? '',
      apartmentNumber: json['apartmentNumber'] as String? ?? '',
      entrance: json['entrance'] as String? ?? '',
      postalCode: json['postalCode'] as String? ?? '',
      profilePhoto: json['profilePhoto'] as String? ?? '',
    );

Map<String, dynamic> _$$SurveyModelImplToJson(_$SurveyModelImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'appName': instance.appName,
      'email': instance.email,
      'address': instance.address,
      'role': instance.role,
      'peopleLivingWith': instance.peopleLivingWith,
      'hasChildren': instance.hasChildren,
      'pets': instance.pets,
      'averageMonthlyIncome': instance.averageMonthlyIncome,
      'percentageSpentOnCosmetics': instance.percentageSpentOnCosmetics,
      'vkProfile': instance.vkProfile,
      'telegramProfile': instance.telegramProfile,
      'deliveryAddress': instance.deliveryAddress,
      'city': instance.city,
      'street': instance.street,
      'houseNumber': instance.houseNumber,
      'apartmentNumber': instance.apartmentNumber,
      'entrance': instance.entrance,
      'postalCode': instance.postalCode,
      'profilePhoto': instance.profilePhoto,
    };
