// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'ProfileEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ProfileEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$UpdateNameImplCopyWith<$Res> {
  factory _$$UpdateNameImplCopyWith(
          _$UpdateNameImpl value, $Res Function(_$UpdateNameImpl) then) =
      __$$UpdateNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateNameImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateNameImpl>
    implements _$$UpdateNameImplCopyWith<$Res> {
  __$$UpdateNameImplCopyWithImpl(
      _$UpdateNameImpl _value, $Res Function(_$UpdateNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNameImpl implements _UpdateName {
  const _$UpdateNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileEvent.updateName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      __$$UpdateNameImplCopyWithImpl<_$UpdateNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements ProfileEvent {
  const factory _UpdateName({required final String name}) = _$UpdateNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSurnameImplCopyWith<$Res> {
  factory _$$UpdateSurnameImplCopyWith(
          _$UpdateSurnameImpl value, $Res Function(_$UpdateSurnameImpl) then) =
      __$$UpdateSurnameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surname});
}

/// @nodoc
class __$$UpdateSurnameImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateSurnameImpl>
    implements _$$UpdateSurnameImplCopyWith<$Res> {
  __$$UpdateSurnameImplCopyWithImpl(
      _$UpdateSurnameImpl _value, $Res Function(_$UpdateSurnameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
  }) {
    return _then(_$UpdateSurnameImpl(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSurnameImpl implements _UpdateSurname {
  const _$UpdateSurnameImpl({required this.surname});

  @override
  final String surname;

  @override
  String toString() {
    return 'ProfileEvent.updateSurname(surname: $surname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSurnameImpl &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSurnameImplCopyWith<_$UpdateSurnameImpl> get copyWith =>
      __$$UpdateSurnameImplCopyWithImpl<_$UpdateSurnameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updateSurname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updateSurname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateSurname != null) {
      return updateSurname(this);
    }
    return orElse();
  }
}

abstract class _UpdateSurname implements ProfileEvent {
  const factory _UpdateSurname({required final String surname}) =
      _$UpdateSurnameImpl;

  String get surname;
  @JsonKey(ignore: true)
  _$$UpdateSurnameImplCopyWith<_$UpdateSurnameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGenderImplCopyWith<$Res> {
  factory _$$UpdateGenderImplCopyWith(
          _$UpdateGenderImpl value, $Res Function(_$UpdateGenderImpl) then) =
      __$$UpdateGenderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gender});
}

/// @nodoc
class __$$UpdateGenderImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateGenderImpl>
    implements _$$UpdateGenderImplCopyWith<$Res> {
  __$$UpdateGenderImplCopyWithImpl(
      _$UpdateGenderImpl _value, $Res Function(_$UpdateGenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$UpdateGenderImpl(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateGenderImpl implements _UpdateGender {
  const _$UpdateGenderImpl({required this.gender});

  @override
  final String gender;

  @override
  String toString() {
    return 'ProfileEvent.updateGender(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGenderImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGenderImplCopyWith<_$UpdateGenderImpl> get copyWith =>
      __$$UpdateGenderImplCopyWithImpl<_$UpdateGenderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updateGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updateGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateGender != null) {
      return updateGender(this);
    }
    return orElse();
  }
}

abstract class _UpdateGender implements ProfileEvent {
  const factory _UpdateGender({required final String gender}) =
      _$UpdateGenderImpl;

  String get gender;
  @JsonKey(ignore: true)
  _$$UpdateGenderImplCopyWith<_$UpdateGenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDateBirthImplCopyWith<$Res> {
  factory _$$UpdateDateBirthImplCopyWith(_$UpdateDateBirthImpl value,
          $Res Function(_$UpdateDateBirthImpl) then) =
      __$$UpdateDateBirthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$UpdateDateBirthImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateDateBirthImpl>
    implements _$$UpdateDateBirthImplCopyWith<$Res> {
  __$$UpdateDateBirthImplCopyWithImpl(
      _$UpdateDateBirthImpl _value, $Res Function(_$UpdateDateBirthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$UpdateDateBirthImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDateBirthImpl implements _UpdateDateBirth {
  const _$UpdateDateBirthImpl({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'ProfileEvent.updateDateBirth(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDateBirthImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDateBirthImplCopyWith<_$UpdateDateBirthImpl> get copyWith =>
      __$$UpdateDateBirthImplCopyWithImpl<_$UpdateDateBirthImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updateDateBirth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updateDateBirth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateDateBirth != null) {
      return updateDateBirth(this);
    }
    return orElse();
  }
}

abstract class _UpdateDateBirth implements ProfileEvent {
  const factory _UpdateDateBirth({required final String date}) =
      _$UpdateDateBirthImpl;

  String get date;
  @JsonKey(ignore: true)
  _$$UpdateDateBirthImplCopyWith<_$UpdateDateBirthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLoginImplCopyWith<$Res> {
  factory _$$UpdateLoginImplCopyWith(
          _$UpdateLoginImpl value, $Res Function(_$UpdateLoginImpl) then) =
      __$$UpdateLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String login});
}

/// @nodoc
class __$$UpdateLoginImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateLoginImpl>
    implements _$$UpdateLoginImplCopyWith<$Res> {
  __$$UpdateLoginImplCopyWithImpl(
      _$UpdateLoginImpl _value, $Res Function(_$UpdateLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$UpdateLoginImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateLoginImpl implements _UpdateLogin {
  const _$UpdateLoginImpl({required this.login});

  @override
  final String login;

  @override
  String toString() {
    return 'ProfileEvent.updateLogin(login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLoginImpl &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLoginImplCopyWith<_$UpdateLoginImpl> get copyWith =>
      __$$UpdateLoginImplCopyWithImpl<_$UpdateLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updateLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updateLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateLogin != null) {
      return updateLogin(this);
    }
    return orElse();
  }
}

abstract class _UpdateLogin implements ProfileEvent {
  const factory _UpdateLogin({required final String login}) = _$UpdateLoginImpl;

  String get login;
  @JsonKey(ignore: true)
  _$$UpdateLoginImplCopyWith<_$UpdateLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEmailImplCopyWith<$Res> {
  factory _$$UpdateEmailImplCopyWith(
          _$UpdateEmailImpl value, $Res Function(_$UpdateEmailImpl) then) =
      __$$UpdateEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$UpdateEmailImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateEmailImpl>
    implements _$$UpdateEmailImplCopyWith<$Res> {
  __$$UpdateEmailImplCopyWithImpl(
      _$UpdateEmailImpl _value, $Res Function(_$UpdateEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UpdateEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEmailImpl implements _UpdateEmail {
  const _$UpdateEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ProfileEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      __$$UpdateEmailImplCopyWithImpl<_$UpdateEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements ProfileEvent {
  const factory _UpdateEmail({required final String email}) = _$UpdateEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$UpdateEmailImplCopyWith<_$UpdateEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePushImplCopyWith<$Res> {
  factory _$$UpdatePushImplCopyWith(
          _$UpdatePushImpl value, $Res Function(_$UpdatePushImpl) then) =
      __$$UpdatePushImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool push});
}

/// @nodoc
class __$$UpdatePushImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdatePushImpl>
    implements _$$UpdatePushImplCopyWith<$Res> {
  __$$UpdatePushImplCopyWithImpl(
      _$UpdatePushImpl _value, $Res Function(_$UpdatePushImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? push = null,
  }) {
    return _then(_$UpdatePushImpl(
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdatePushImpl implements _UpdatePush {
  const _$UpdatePushImpl({required this.push});

  @override
  final bool push;

  @override
  String toString() {
    return 'ProfileEvent.updatePush(push: $push)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePushImpl &&
            (identical(other.push, push) || other.push == push));
  }

  @override
  int get hashCode => Object.hash(runtimeType, push);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePushImplCopyWith<_$UpdatePushImpl> get copyWith =>
      __$$UpdatePushImplCopyWithImpl<_$UpdatePushImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updatePush(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updatePush?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updatePush != null) {
      return updatePush(this);
    }
    return orElse();
  }
}

abstract class _UpdatePush implements ProfileEvent {
  const factory _UpdatePush({required final bool push}) = _$UpdatePushImpl;

  bool get push;
  @JsonKey(ignore: true)
  _$$UpdatePushImplCopyWith<_$UpdatePushImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAgreementImplCopyWith<$Res> {
  factory _$$UpdateAgreementImplCopyWith(_$UpdateAgreementImpl value,
          $Res Function(_$UpdateAgreementImpl) then) =
      __$$UpdateAgreementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool agreement});
}

/// @nodoc
class __$$UpdateAgreementImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateAgreementImpl>
    implements _$$UpdateAgreementImplCopyWith<$Res> {
  __$$UpdateAgreementImplCopyWithImpl(
      _$UpdateAgreementImpl _value, $Res Function(_$UpdateAgreementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreement = null,
  }) {
    return _then(_$UpdateAgreementImpl(
      agreement: null == agreement
          ? _value.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateAgreementImpl implements _UpdateAgreement {
  const _$UpdateAgreementImpl({required this.agreement});

  @override
  final bool agreement;

  @override
  String toString() {
    return 'ProfileEvent.updateAgreement(agreement: $agreement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAgreementImpl &&
            (identical(other.agreement, agreement) ||
                other.agreement == agreement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agreement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAgreementImplCopyWith<_$UpdateAgreementImpl> get copyWith =>
      __$$UpdateAgreementImplCopyWithImpl<_$UpdateAgreementImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return updateAgreement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return updateAgreement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateAgreement != null) {
      return updateAgreement(this);
    }
    return orElse();
  }
}

abstract class _UpdateAgreement implements ProfileEvent {
  const factory _UpdateAgreement({required final bool agreement}) =
      _$UpdateAgreementImpl;

  bool get agreement;
  @JsonKey(ignore: true)
  _$$UpdateAgreementImplCopyWith<_$UpdateAgreementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(
          _$SaveImpl value, $Res Function(_$SaveImpl) then) =
      __$$SaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String gender,
      String birthdate,
      String login,
      String email,
      String address});
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? birthdate = null,
    Object? login = null,
    Object? email = null,
    Object? address = null,
  }) {
    return _then(_$SaveImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl(
      {required this.firstName,
      required this.lastName,
      required this.gender,
      required this.birthdate,
      required this.login,
      required this.email,
      required this.address});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String gender;
  @override
  final String birthdate;
  @override
  final String login;
  @override
  final String email;
  @override
  final String address;

  @override
  String toString() {
    return 'ProfileEvent.save(firstName: $firstName, lastName: $lastName, gender: $gender, birthdate: $birthdate, login: $login, email: $email, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, gender,
      birthdate, login, email, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveImplCopyWith<_$SaveImpl> get copyWith =>
      __$$SaveImplCopyWithImpl<_$SaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateSurname value) updateSurname,
    required TResult Function(_UpdateGender value) updateGender,
    required TResult Function(_UpdateDateBirth value) updateDateBirth,
    required TResult Function(_UpdateLogin value) updateLogin,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdatePush value) updatePush,
    required TResult Function(_UpdateAgreement value) updateAgreement,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateSurname value)? updateSurname,
    TResult? Function(_UpdateGender value)? updateGender,
    TResult? Function(_UpdateDateBirth value)? updateDateBirth,
    TResult? Function(_UpdateLogin value)? updateLogin,
    TResult? Function(_UpdateEmail value)? updateEmail,
    TResult? Function(_UpdatePush value)? updatePush,
    TResult? Function(_UpdateAgreement value)? updateAgreement,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateSurname value)? updateSurname,
    TResult Function(_UpdateGender value)? updateGender,
    TResult Function(_UpdateDateBirth value)? updateDateBirth,
    TResult Function(_UpdateLogin value)? updateLogin,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdatePush value)? updatePush,
    TResult Function(_UpdateAgreement value)? updateAgreement,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements ProfileEvent {
  const factory _Save(
      {required final String firstName,
      required final String lastName,
      required final String gender,
      required final String birthdate,
      required final String login,
      required final String email,
      required final String address}) = _$SaveImpl;

  String get firstName;
  String get lastName;
  String get gender;
  String get birthdate;
  String get login;
  String get email;
  String get address;
  @JsonKey(ignore: true)
  _$$SaveImplCopyWith<_$SaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  ScreenStatus get screenStatus => throw _privateConstructorUsedError;
  User get userFields => throw _privateConstructorUsedError;
  List<Orders> get orders => throw _privateConstructorUsedError;
  ButtonPushStatus get statusChangeProfileFields =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      User userFields,
      List<Orders> orders,
      ButtonPushStatus statusChangeProfileFields,
      String errorMessage});

  $UserCopyWith<$Res> get userFields;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? userFields = null,
    Object? orders = null,
    Object? statusChangeProfileFields = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      userFields: null == userFields
          ? _value.userFields
          : userFields // ignore: cast_nullable_to_non_nullable
              as User,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>,
      statusChangeProfileFields: null == statusChangeProfileFields
          ? _value.statusChangeProfileFields
          : statusChangeProfileFields // ignore: cast_nullable_to_non_nullable
              as ButtonPushStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get userFields {
    return $UserCopyWith<$Res>(_value.userFields, (value) {
      return _then(_value.copyWith(userFields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus screenStatus,
      User userFields,
      List<Orders> orders,
      ButtonPushStatus statusChangeProfileFields,
      String errorMessage});

  @override
  $UserCopyWith<$Res> get userFields;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenStatus = null,
    Object? userFields = null,
    Object? orders = null,
    Object? statusChangeProfileFields = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ProfileStateImpl(
      screenStatus: null == screenStatus
          ? _value.screenStatus
          : screenStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      userFields: null == userFields
          ? _value.userFields
          : userFields // ignore: cast_nullable_to_non_nullable
              as User,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Orders>,
      statusChangeProfileFields: null == statusChangeProfileFields
          ? _value.statusChangeProfileFields
          : statusChangeProfileFields // ignore: cast_nullable_to_non_nullable
              as ButtonPushStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.screenStatus = ScreenStatus.initial,
      this.userFields = const User(),
      final List<Orders> orders = const <Orders>[],
      this.statusChangeProfileFields = ButtonPushStatus.initial,
      this.errorMessage = ''})
      : _orders = orders;

  @override
  @JsonKey()
  final ScreenStatus screenStatus;
  @override
  @JsonKey()
  final User userFields;
  final List<Orders> _orders;
  @override
  @JsonKey()
  List<Orders> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final ButtonPushStatus statusChangeProfileFields;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ProfileState(screenStatus: $screenStatus, userFields: $userFields, orders: $orders, statusChangeProfileFields: $statusChangeProfileFields, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.screenStatus, screenStatus) ||
                other.screenStatus == screenStatus) &&
            (identical(other.userFields, userFields) ||
                other.userFields == userFields) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.statusChangeProfileFields,
                    statusChangeProfileFields) ||
                other.statusChangeProfileFields == statusChangeProfileFields) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screenStatus,
      userFields,
      const DeepCollectionEquality().hash(_orders),
      statusChangeProfileFields,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ScreenStatus screenStatus,
      final User userFields,
      final List<Orders> orders,
      final ButtonPushStatus statusChangeProfileFields,
      final String errorMessage}) = _$ProfileStateImpl;

  @override
  ScreenStatus get screenStatus;
  @override
  User get userFields;
  @override
  List<Orders> get orders;
  @override
  ButtonPushStatus get statusChangeProfileFields;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
