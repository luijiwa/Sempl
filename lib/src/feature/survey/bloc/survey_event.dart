part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.setLogin(String login) = _SetLogin;
  const factory SurveyEvent.setPassword(String password) = _SetPassword;
  const factory SurveyEvent.setFirstName(String firstName) = _SetFirstName;
  const factory SurveyEvent.setLastName(String lastName) = _SetLastName;
  const factory SurveyEvent.setGender(String gender) = _SetGender;
  const factory SurveyEvent.setBirthdate(String birthdate) = _SetBirthdate;
  const factory SurveyEvent.setAppName(String appName) = _SetAppName;
  const factory SurveyEvent.setEmail(String email) = _SetEmail;
  const factory SurveyEvent.setAddress(String address) = _SetAddress;
  const factory SurveyEvent.setPeopleLivingWith(String peopleLivingWith) =
      _SetPeopleLivingWith; //в модели int
  const factory SurveyEvent.setHasChildren(bool hasChildren) = _SetHasChildren;
  const factory SurveyEvent.setPets(String pets) = _SetPets;
  const factory SurveyEvent.setAverageMonthlyIncome(String averageMonthlyIncome) =
      _SetAverageMonthlyIncome; //в модели int
  const factory SurveyEvent.setPercentageSpentOnCosmetics(
          String percentageSpentOnCosmetics) =
      _SetPercentageSpentOnCosmetics; //в модели int
  const factory SurveyEvent.setVkProfile(String vkProfile) = _SetVkProfile;
  const factory SurveyEvent.setTelegramProfile(String telegramProfile) =
      _SetTelegramProfile;
  const factory SurveyEvent.setProfilePhoto(String profilePhoto) =
      _SetProfilePhoto;
  const factory SurveyEvent.setDeliveryAddress(String deliveryAddress) =
      _SetDeliveryAddress;
  const factory SurveyEvent.setCity(String city) = _SetCity;
  const factory SurveyEvent.setStreet(String street) = _SetStreet;
  const factory SurveyEvent.setHouseNumber(String houseNumber) =
      _SetHouseNumber;
  const factory SurveyEvent.setApartmentNumber(String apartmentNumber) =
      _SetApartmentNumber;
  const factory SurveyEvent.setEntrance(String entrance) = _SetEntrance;
  const factory SurveyEvent.setPostalCode(String postalCode) = _SetPostalCode;
  const factory SurveyEvent.setWantAdvertising(bool wantAdvertising) =
      _SetWantAdvertising;
  const factory SurveyEvent.setAcceptPolicy(bool acceptPolicy) =
      _SetAcceptPolicy;
  const factory SurveyEvent.sendResultSurvey() = _SendResultSurvey;
}
