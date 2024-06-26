// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl({this.user = const User()});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'UserData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData({final User user}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get role => throw _privateConstructorUsedError;
  int get wantAdvertising => throw _privateConstructorUsedError;
  int get acceptPolicy => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get peopleLivingWith => throw _privateConstructorUsedError;
  int get hasChildren => throw _privateConstructorUsedError;
  String get pets => throw _privateConstructorUsedError;
  String get averageMonthlyIncome => throw _privateConstructorUsedError;
  String get percentageSpentOnCosmetics => throw _privateConstructorUsedError;
  String get vkProfile => throw _privateConstructorUsedError;
  String get telegramProfile => throw _privateConstructorUsedError;
  String get profilePhoto => throw _privateConstructorUsedError;
  String get deliveryAddress => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get houseNumber => throw _privateConstructorUsedError;
  String get apartmentNumber => throw _privateConstructorUsedError;
  String get entrance => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get fullAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String login,
      String firstName,
      String lastName,
      String gender,
      String birthdate,
      String appName,
      String email,
      String address,
      int role,
      int wantAdvertising,
      int acceptPolicy,
      String createdAt,
      String updatedAt,
      int peopleLivingWith,
      int hasChildren,
      String pets,
      String averageMonthlyIncome,
      String percentageSpentOnCosmetics,
      String vkProfile,
      String telegramProfile,
      String profilePhoto,
      String deliveryAddress,
      String city,
      String street,
      String houseNumber,
      String apartmentNumber,
      String entrance,
      String postalCode,
      String phone,
      String fullAddress});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? birthdate = null,
    Object? appName = null,
    Object? email = null,
    Object? address = null,
    Object? role = null,
    Object? wantAdvertising = null,
    Object? acceptPolicy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? peopleLivingWith = null,
    Object? hasChildren = null,
    Object? pets = null,
    Object? averageMonthlyIncome = null,
    Object? percentageSpentOnCosmetics = null,
    Object? vkProfile = null,
    Object? telegramProfile = null,
    Object? profilePhoto = null,
    Object? deliveryAddress = null,
    Object? city = null,
    Object? street = null,
    Object? houseNumber = null,
    Object? apartmentNumber = null,
    Object? entrance = null,
    Object? postalCode = null,
    Object? phone = null,
    Object? fullAddress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
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
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      wantAdvertising: null == wantAdvertising
          ? _value.wantAdvertising
          : wantAdvertising // ignore: cast_nullable_to_non_nullable
              as int,
      acceptPolicy: null == acceptPolicy
          ? _value.acceptPolicy
          : acceptPolicy // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      peopleLivingWith: null == peopleLivingWith
          ? _value.peopleLivingWith
          : peopleLivingWith // ignore: cast_nullable_to_non_nullable
              as int,
      hasChildren: null == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as int,
      pets: null == pets
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as String,
      averageMonthlyIncome: null == averageMonthlyIncome
          ? _value.averageMonthlyIncome
          : averageMonthlyIncome // ignore: cast_nullable_to_non_nullable
              as String,
      percentageSpentOnCosmetics: null == percentageSpentOnCosmetics
          ? _value.percentageSpentOnCosmetics
          : percentageSpentOnCosmetics // ignore: cast_nullable_to_non_nullable
              as String,
      vkProfile: null == vkProfile
          ? _value.vkProfile
          : vkProfile // ignore: cast_nullable_to_non_nullable
              as String,
      telegramProfile: null == telegramProfile
          ? _value.telegramProfile
          : telegramProfile // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      houseNumber: null == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentNumber: null == apartmentNumber
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String login,
      String firstName,
      String lastName,
      String gender,
      String birthdate,
      String appName,
      String email,
      String address,
      int role,
      int wantAdvertising,
      int acceptPolicy,
      String createdAt,
      String updatedAt,
      int peopleLivingWith,
      int hasChildren,
      String pets,
      String averageMonthlyIncome,
      String percentageSpentOnCosmetics,
      String vkProfile,
      String telegramProfile,
      String profilePhoto,
      String deliveryAddress,
      String city,
      String street,
      String houseNumber,
      String apartmentNumber,
      String entrance,
      String postalCode,
      String phone,
      String fullAddress});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = null,
    Object? birthdate = null,
    Object? appName = null,
    Object? email = null,
    Object? address = null,
    Object? role = null,
    Object? wantAdvertising = null,
    Object? acceptPolicy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? peopleLivingWith = null,
    Object? hasChildren = null,
    Object? pets = null,
    Object? averageMonthlyIncome = null,
    Object? percentageSpentOnCosmetics = null,
    Object? vkProfile = null,
    Object? telegramProfile = null,
    Object? profilePhoto = null,
    Object? deliveryAddress = null,
    Object? city = null,
    Object? street = null,
    Object? houseNumber = null,
    Object? apartmentNumber = null,
    Object? entrance = null,
    Object? postalCode = null,
    Object? phone = null,
    Object? fullAddress = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
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
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      wantAdvertising: null == wantAdvertising
          ? _value.wantAdvertising
          : wantAdvertising // ignore: cast_nullable_to_non_nullable
              as int,
      acceptPolicy: null == acceptPolicy
          ? _value.acceptPolicy
          : acceptPolicy // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      peopleLivingWith: null == peopleLivingWith
          ? _value.peopleLivingWith
          : peopleLivingWith // ignore: cast_nullable_to_non_nullable
              as int,
      hasChildren: null == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as int,
      pets: null == pets
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as String,
      averageMonthlyIncome: null == averageMonthlyIncome
          ? _value.averageMonthlyIncome
          : averageMonthlyIncome // ignore: cast_nullable_to_non_nullable
              as String,
      percentageSpentOnCosmetics: null == percentageSpentOnCosmetics
          ? _value.percentageSpentOnCosmetics
          : percentageSpentOnCosmetics // ignore: cast_nullable_to_non_nullable
              as String,
      vkProfile: null == vkProfile
          ? _value.vkProfile
          : vkProfile // ignore: cast_nullable_to_non_nullable
              as String,
      telegramProfile: null == telegramProfile
          ? _value.telegramProfile
          : telegramProfile // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      houseNumber: null == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentNumber: null == apartmentNumber
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  const _$UserImpl(
      {this.id = 0,
      this.login = '',
      this.firstName = '',
      this.lastName = '',
      this.gender = '',
      this.birthdate = '',
      this.appName = '',
      this.email = '',
      this.address = '',
      this.role = 0,
      this.wantAdvertising = 0,
      this.acceptPolicy = 0,
      this.createdAt = '',
      this.updatedAt = '',
      this.peopleLivingWith = 0,
      this.hasChildren = 0,
      this.pets = '',
      this.averageMonthlyIncome = '',
      this.percentageSpentOnCosmetics = '',
      this.vkProfile = '',
      this.telegramProfile = '',
      this.profilePhoto = '',
      this.deliveryAddress = '',
      this.city = '',
      this.street = '',
      this.houseNumber = '',
      this.apartmentNumber = '',
      this.entrance = '',
      this.postalCode = '',
      this.phone = '',
      this.fullAddress = ''})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String login;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String birthdate;
  @override
  @JsonKey()
  final String appName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final int role;
  @override
  @JsonKey()
  final int wantAdvertising;
  @override
  @JsonKey()
  final int acceptPolicy;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final int peopleLivingWith;
  @override
  @JsonKey()
  final int hasChildren;
  @override
  @JsonKey()
  final String pets;
  @override
  @JsonKey()
  final String averageMonthlyIncome;
  @override
  @JsonKey()
  final String percentageSpentOnCosmetics;
  @override
  @JsonKey()
  final String vkProfile;
  @override
  @JsonKey()
  final String telegramProfile;
  @override
  @JsonKey()
  final String profilePhoto;
  @override
  @JsonKey()
  final String deliveryAddress;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String houseNumber;
  @override
  @JsonKey()
  final String apartmentNumber;
  @override
  @JsonKey()
  final String entrance;
  @override
  @JsonKey()
  final String postalCode;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String fullAddress;

  @override
  String toString() {
    return 'User(id: $id, login: $login, firstName: $firstName, lastName: $lastName, gender: $gender, birthdate: $birthdate, appName: $appName, email: $email, address: $address, role: $role, wantAdvertising: $wantAdvertising, acceptPolicy: $acceptPolicy, createdAt: $createdAt, updatedAt: $updatedAt, peopleLivingWith: $peopleLivingWith, hasChildren: $hasChildren, pets: $pets, averageMonthlyIncome: $averageMonthlyIncome, percentageSpentOnCosmetics: $percentageSpentOnCosmetics, vkProfile: $vkProfile, telegramProfile: $telegramProfile, profilePhoto: $profilePhoto, deliveryAddress: $deliveryAddress, city: $city, street: $street, houseNumber: $houseNumber, apartmentNumber: $apartmentNumber, entrance: $entrance, postalCode: $postalCode, phone: $phone, fullAddress: $fullAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.wantAdvertising, wantAdvertising) ||
                other.wantAdvertising == wantAdvertising) &&
            (identical(other.acceptPolicy, acceptPolicy) ||
                other.acceptPolicy == acceptPolicy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.peopleLivingWith, peopleLivingWith) ||
                other.peopleLivingWith == peopleLivingWith) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.pets, pets) || other.pets == pets) &&
            (identical(other.averageMonthlyIncome, averageMonthlyIncome) ||
                other.averageMonthlyIncome == averageMonthlyIncome) &&
            (identical(other.percentageSpentOnCosmetics,
                    percentageSpentOnCosmetics) ||
                other.percentageSpentOnCosmetics ==
                    percentageSpentOnCosmetics) &&
            (identical(other.vkProfile, vkProfile) ||
                other.vkProfile == vkProfile) &&
            (identical(other.telegramProfile, telegramProfile) ||
                other.telegramProfile == telegramProfile) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.apartmentNumber, apartmentNumber) ||
                other.apartmentNumber == apartmentNumber) &&
            (identical(other.entrance, entrance) ||
                other.entrance == entrance) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        login,
        firstName,
        lastName,
        gender,
        birthdate,
        appName,
        email,
        address,
        role,
        wantAdvertising,
        acceptPolicy,
        createdAt,
        updatedAt,
        peopleLivingWith,
        hasChildren,
        pets,
        averageMonthlyIncome,
        percentageSpentOnCosmetics,
        vkProfile,
        telegramProfile,
        profilePhoto,
        deliveryAddress,
        city,
        street,
        houseNumber,
        apartmentNumber,
        entrance,
        postalCode,
        phone,
        fullAddress
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {final int id,
      final String login,
      final String firstName,
      final String lastName,
      final String gender,
      final String birthdate,
      final String appName,
      final String email,
      final String address,
      final int role,
      final int wantAdvertising,
      final int acceptPolicy,
      final String createdAt,
      final String updatedAt,
      final int peopleLivingWith,
      final int hasChildren,
      final String pets,
      final String averageMonthlyIncome,
      final String percentageSpentOnCosmetics,
      final String vkProfile,
      final String telegramProfile,
      final String profilePhoto,
      final String deliveryAddress,
      final String city,
      final String street,
      final String houseNumber,
      final String apartmentNumber,
      final String entrance,
      final String postalCode,
      final String phone,
      final String fullAddress}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get login;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get gender;
  @override
  String get birthdate;
  @override
  String get appName;
  @override
  String get email;
  @override
  String get address;
  @override
  int get role;
  @override
  int get wantAdvertising;
  @override
  int get acceptPolicy;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  int get peopleLivingWith;
  @override
  int get hasChildren;
  @override
  String get pets;
  @override
  String get averageMonthlyIncome;
  @override
  String get percentageSpentOnCosmetics;
  @override
  String get vkProfile;
  @override
  String get telegramProfile;
  @override
  String get profilePhoto;
  @override
  String get deliveryAddress;
  @override
  String get city;
  @override
  String get street;
  @override
  String get houseNumber;
  @override
  String get apartmentNumber;
  @override
  String get entrance;
  @override
  String get postalCode;
  @override
  String get phone;
  @override
  String get fullAddress;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
