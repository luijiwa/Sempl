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
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      birthdate: json['birthdate'] as String? ?? '',
      appName: json['appName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      address: json['address'] as String? ?? '',
      role: json['role'] as int? ?? 0,
      wantAdvertising: json['wantAdvertising'] as int? ?? 0,
      acceptPolicy: json['acceptPolicy'] as int? ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      peopleLivingWith: json['peopleLivingWith'] as int? ?? 0,
      hasChildren: json['hasChildren'] as int? ?? 0,
      pets: json['pets'] as String? ?? '',
      averageMonthlyIncome: json['averageMonthlyIncome'] as String? ?? '',
      percentageSpentOnCosmetics:
          json['percentageSpentOnCosmetics'] as String? ?? '',
      vkProfile: json['vkProfile'] as String? ?? '',
      telegramProfile: json['telegramProfile'] as String? ?? '',
      profilePhoto: json['profilePhoto'] as String? ?? '',
      deliveryAddress: json['deliveryAddress'] as String? ?? '',
      city: json['city'] as String? ?? '',
      street: json['street'] as String? ?? '',
      houseNumber: json['houseNumber'] as String? ?? '',
      apartmentNumber: json['apartmentNumber'] as String? ?? '',
      entrance: json['entrance'] as String? ?? '',
      postalCode: json['postalCode'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      fullAddress: json['fullAddress'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'appName': instance.appName,
      'email': instance.email,
      'address': instance.address,
      'role': instance.role,
      'wantAdvertising': instance.wantAdvertising,
      'acceptPolicy': instance.acceptPolicy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'peopleLivingWith': instance.peopleLivingWith,
      'hasChildren': instance.hasChildren,
      'pets': instance.pets,
      'averageMonthlyIncome': instance.averageMonthlyIncome,
      'percentageSpentOnCosmetics': instance.percentageSpentOnCosmetics,
      'vkProfile': instance.vkProfile,
      'telegramProfile': instance.telegramProfile,
      'profilePhoto': instance.profilePhoto,
      'deliveryAddress': instance.deliveryAddress,
      'city': instance.city,
      'street': instance.street,
      'houseNumber': instance.houseNumber,
      'apartmentNumber': instance.apartmentNumber,
      'entrance': instance.entrance,
      'postalCode': instance.postalCode,
      'phone': instance.phone,
      'fullAddress': instance.fullAddress,
    };
