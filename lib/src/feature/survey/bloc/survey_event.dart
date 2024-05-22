part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  //name, lastName, gender, birthdate, login, email, sity, street, house number, apartment number, entrance, postal code, peopleLivingWith,hasChildren, pets, averageMonthlyIncome, percentageSpentOnCosmetics, vkProfile, telegramProfile, avatarImage

  const factory SurveyEvent.setFirstName(String firstName) = _SetFirstName;
  const factory SurveyEvent.setLastName(String lastName) = _SetLastName;
  const factory SurveyEvent.setGender(String gender) = _SetGender;
  const factory SurveyEvent.setBirthdate(String birthdate) = _SetBirthdate;
  const factory SurveyEvent.setLogin(String login) = _SetLogin;
  const factory SurveyEvent.setEmail(String email) = _SetEmail;
  const factory SurveyEvent.setCity(String city) = _SetCity;
  const factory SurveyEvent.setStreet(String street) = _SetStreet;
  const factory SurveyEvent.setHouseNumber(String houseNumber) =
      _SetHouseNumber;
  const factory SurveyEvent.setApartmentNumber(String apartmentNumber) =
      _SetApartmentNumber;
  const factory SurveyEvent.setEntrance(String entrance) = _SetEntrance;
  const factory SurveyEvent.setPostalCode(String postalCode) = _SetPostalCode;
  const factory SurveyEvent.setPeopleLivingWith(int peopleLivingWith) =
      _SetPeopleLivingWith;
  const factory SurveyEvent.setHasChildren(bool hasChildren) = _SetHasChildren;
  const factory SurveyEvent.setPets(String pets) = _SetPets;
  const factory SurveyEvent.setAverageMonthlyIncome(int averageMonthlyIncome) =
      _SetAverageMonthlyIncome;
  const factory SurveyEvent.setPercentageSpentOnCosmetics(
      int percentageSpentOnCosmetics) = _SetPercentageSpentOnCosmetics;
  const factory SurveyEvent.setVkProfile(String vkProfile) = _SetVkProfile;
  const factory SurveyEvent.setTelegramProfile(String telegramProfile) =
      _SetTelegramProfile;
  const factory SurveyEvent.setAvatarImage(String avatarImage) =
      _SetAvatarImage;
  const factory SurveyEvent.sendResultSurvey() = _SendResultSurvey;
}
