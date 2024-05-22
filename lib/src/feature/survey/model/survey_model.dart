import 'package:freezed_annotation/freezed_annotation.dart';
part 'survey_model.freezed.dart';
part 'survey_model.g.dart';

@freezed
class SurveyModel with _$SurveyModel {
  const factory SurveyModel({
    @Default('') String login,
    @Default('') String password,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String gender,
    @Default('') String birthdate,
    @Default('') String appName,
    @Default('') String email,
    @Default('') String address,
    @Default('') String role,
    @Default(0) int peopleLivingWith,
    @Default(false) bool? hasChildren,
    @Default('') String pets,
    @Default(0) int averageMonthlyIncome,
    @Default(0) int percentageSpentOnCosmetics,
    @Default('') String vkProfile,
    @Default('') String telegramProfile,
    @Default('') String deliveryAddress,
    @Default('') String city,
    @Default('') String street,
    @Default('') String houseNumber,
    @Default('') String apartmentNumber,
    @Default('') String entrance,
    @Default('') String postalCode,
    @Default('') String profilePhoto,
  }) = _SurveyModel;

  factory SurveyModel.fromJson(Map<String, Object?> json) =>
      _$SurveyModelFromJson(json);
}
