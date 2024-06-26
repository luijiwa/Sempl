import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @Default(User()) User user,
    // String accessToken,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @Default(0) int id,
    @Default('') String login,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String gender,
    @Default('') String birthdate,
    @Default('') String appName,
    @Default('') String email,
    @Default('') String address,
    @Default(0) int role,
    @Default(0) int wantAdvertising,
    @Default(0) int acceptPolicy,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default(0) int peopleLivingWith,
    @Default(0) int hasChildren,
    @Default('') String pets,
    @Default('') String averageMonthlyIncome,
    @Default('') String percentageSpentOnCosmetics,
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
    @Default('') String phone,
    @Default('') String fullAddress,
  }) = _User;
  const User._();

  String get fullName => '$firstName $lastName';
  String get loginUpper => login.toUpperCase();

  ///birthdate format: '2022-12-31' а нужно в формате '31/12/2022'
  String get birthdateReverse => birthdate.split('-').reversed.join('/');

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
