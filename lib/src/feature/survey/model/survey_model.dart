import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_model.freezed.dart';
part 'survey_model.g.dart';

@freezed
class SurveyModel with _$SurveyModel {
  const factory SurveyModel({
    @Default('') String login,
    @Default('default') String password,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String gender,
    @Default('') String birthdate,
    @Default('') String appName,
    @Default('') String email,
    @Default('') String address,
    @Default(0) int peopleLivingWith,
    @Default(false) bool hasChildren,
    @Default('') String pets,
    @Default(0) int averageMonthlyIncome,
    @Default(0) int percentageSpentOnCosmetics,
    @Default('') String vkProfile,
    @Default('') String telegramProfile,
    @Default('') String profilePhoto,
    @Default('') String deliveryAddress,
    @Default('') String city,
    @Default('') String street,
    @Default('') String houseNumber,
    @Default('') String apartmentNumber,
    @Default('') String entrance,
    @Default('') String postalCode,
    @Default(true) bool wantAdvertising,
    @Default(true) bool acceptPolicy,
  }) = _SurveyModel;

  factory SurveyModel.fromJson(Map<String, Object> json) =>
      _$SurveyModelFromJson(json);
}

// {
//     "login": "userыфывaфйуыыфввфывsd123",
//     "password": "securepassword",
//     "first_name": "John",
//     "last_name": "Doe",
//     "gender": "male",
//     "birthdate": "1990-01-01",
//     "app_name": "MyApp",
//     "email": "johsффывыйуфывывфывadn.doe@example.com",
//     "address": "123 Main St",
//     "people_living_with": 3,
//     "has_children": true,
//     "pets": "dog",
//     "average_monthly_income": 5000,
//     "percentage_spent_on_cosmetics": 10,
//     "vk_profile": "vk.com/johndoe",
//     "telegram_profile": "@johndoe",
//     "profile_photo": null,
//     "delivery_address": "123 Main St",
//     "city": "Some City",
//     "street": "Main St",
//     "house_number": "123",
//     "apartment_number": "45",
//     "entrance": "1",
//     "postal_code": "123456",
//     "want_advertising": true,
//     "accept_policy": true
// }