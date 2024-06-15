part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.load() = _Load;

  /// Нужны ивенты для изменения поля имени, фамилии, пола, даты рождения, логина, почты, и чекбокса принятия условий и чекбокса соглашения получать рекламу
  const factory ProfileEvent.updateName({required String name}) = _UpdateName;
  const factory ProfileEvent.updateSurname({required String surname}) =
      _UpdateSurname;
  const factory ProfileEvent.updateGender({required String gender}) =
      _UpdateGender;
  const factory ProfileEvent.updateDateBirth({required String date}) =
      _UpdateDateBirth;
  const factory ProfileEvent.updateLogin({required String login}) =
      _UpdateLogin;
  const factory ProfileEvent.updateEmail({required String email}) =
      _UpdateEmail;
  const factory ProfileEvent.updatePush({required bool push}) = _UpdatePush;
  const factory ProfileEvent.updateAgreement({required bool agreement}) =
      _UpdateAgreement;

  const factory ProfileEvent.save(
      {required String firstName,
      required String lastName,
      required String gender,
      required String birthdate,
      required String login,
      required String email,
      required String address, }) = _Save;
}
