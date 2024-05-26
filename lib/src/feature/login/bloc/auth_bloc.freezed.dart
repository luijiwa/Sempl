// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanded value) statusChanded,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SendPhone value) sendPhone,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SaveCode value) saveCode,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChanded value)? statusChanded,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SendPhone value)? sendPhone,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SaveCode value)? saveCode,
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanded value)? statusChanded,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SendPhone value)? sendPhone,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SaveCode value)? saveCode,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusChandedImplCopyWith<$Res> {
  factory _$$StatusChandedImplCopyWith(
          _$StatusChandedImpl value, $Res Function(_$StatusChandedImpl) then) =
      __$$StatusChandedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$StatusChandedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StatusChandedImpl>
    implements _$$StatusChandedImplCopyWith<$Res> {
  __$$StatusChandedImplCopyWithImpl(
      _$StatusChandedImpl _value, $Res Function(_$StatusChandedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StatusChandedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$StatusChandedImpl implements _StatusChanded {
  const _$StatusChandedImpl({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthEvent.statusChanded(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusChandedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusChandedImplCopyWith<_$StatusChandedImpl> get copyWith =>
      __$$StatusChandedImplCopyWithImpl<_$StatusChandedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanded value) statusChanded,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SendPhone value) sendPhone,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SaveCode value) saveCode,
    required TResult Function(_Register value) register,
  }) {
    return statusChanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChanded value)? statusChanded,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SendPhone value)? sendPhone,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SaveCode value)? saveCode,
    TResult? Function(_Register value)? register,
  }) {
    return statusChanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanded value)? statusChanded,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SendPhone value)? sendPhone,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SaveCode value)? saveCode,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (statusChanded != null) {
      return statusChanded(this);
    }
    return orElse();
  }
}

abstract class _StatusChanded implements AuthEvent {
  const factory _StatusChanded({required final AuthenticationStatus status}) =
      _$StatusChandedImpl;

  AuthenticationStatus get status;
  @JsonKey(ignore: true)
  _$$StatusChandedImplCopyWith<_$StatusChandedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanded value) statusChanded,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SendPhone value) sendPhone,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SaveCode value) saveCode,
    required TResult Function(_Register value) register,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChanded value)? statusChanded,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SendPhone value)? sendPhone,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SaveCode value)? saveCode,
    TResult? Function(_Register value)? register,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanded value)? statusChanded,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SendPhone value)? sendPhone,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SaveCode value)? saveCode,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$SendPhoneImplCopyWith<$Res> {
  factory _$$SendPhoneImplCopyWith(
          _$SendPhoneImpl value, $Res Function(_$SendPhoneImpl) then) =
      __$$SendPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$SendPhoneImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendPhoneImpl>
    implements _$$SendPhoneImplCopyWith<$Res> {
  __$$SendPhoneImplCopyWithImpl(
      _$SendPhoneImpl _value, $Res Function(_$SendPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$SendPhoneImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPhoneImpl implements _SendPhone {
  const _$SendPhoneImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.sendPhone(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPhoneImplCopyWith<_$SendPhoneImpl> get copyWith =>
      __$$SendPhoneImplCopyWithImpl<_$SendPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanded value) statusChanded,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SendPhone value) sendPhone,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SaveCode value) saveCode,
    required TResult Function(_Register value) register,
  }) {
    return sendPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChanded value)? statusChanded,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SendPhone value)? sendPhone,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SaveCode value)? saveCode,
    TResult? Function(_Register value)? register,
  }) {
    return sendPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanded value)? statusChanded,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SendPhone value)? sendPhone,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SaveCode value)? saveCode,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (sendPhone != null) {
      return sendPhone(this);
    }
    return orElse();
  }
}

abstract class _SendPhone implements AuthEvent {
  const factory _SendPhone({required final String phone}) = _$SendPhoneImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$SendPhoneImplCopyWith<_$SendPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendCodeImplCopyWith<$Res> {
  factory _$$SendCodeImplCopyWith(
          _$SendCodeImpl value, $Res Function(_$SendCodeImpl) then) =
      __$$SendCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$SendCodeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendCodeImpl>
    implements _$$SendCodeImplCopyWith<$Res> {
  __$$SendCodeImplCopyWithImpl(
      _$SendCodeImpl _value, $Res Function(_$SendCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$SendCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCodeImpl implements _SendCode {
  const _$SendCodeImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.sendCode(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      __$$SendCodeImplCopyWithImpl<_$SendCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanded value) statusChanded,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SendPhone value) sendPhone,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SaveCode value) saveCode,
    required TResult Function(_Register value) register,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChanded value)? statusChanded,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SendPhone value)? sendPhone,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SaveCode value)? saveCode,
    TResult? Function(_Register value)? register,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanded value)? statusChanded,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SendPhone value)? sendPhone,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SaveCode value)? saveCode,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class _SendCode implements AuthEvent {
  const factory _SendCode({required final String code}) = _$SendCodeImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCodeImplCopyWith<$Res> {
  factory _$$SaveCodeImplCopyWith(
          _$SaveCodeImpl value, $Res Function(_$SaveCodeImpl) then) =
      __$$SaveCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$SaveCodeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SaveCodeImpl>
    implements _$$SaveCodeImplCopyWith<$Res> {
  __$$SaveCodeImplCopyWithImpl(
      _$SaveCodeImpl _value, $Res Function(_$SaveCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$SaveCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveCodeImpl implements _SaveCode {
  const _$SaveCodeImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.saveCode(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCodeImplCopyWith<_$SaveCodeImpl> get copyWith =>
      __$$SaveCodeImplCopyWithImpl<_$SaveCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanded value) statusChanded,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SendPhone value) sendPhone,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SaveCode value) saveCode,
    required TResult Function(_Register value) register,
  }) {
    return saveCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChanded value)? statusChanded,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SendPhone value)? sendPhone,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SaveCode value)? saveCode,
    TResult? Function(_Register value)? register,
  }) {
    return saveCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanded value)? statusChanded,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SendPhone value)? sendPhone,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SaveCode value)? saveCode,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (saveCode != null) {
      return saveCode(this);
    }
    return orElse();
  }
}

abstract class _SaveCode implements AuthEvent {
  const factory _SaveCode({required final String code}) = _$SaveCodeImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$SaveCodeImplCopyWith<_$SaveCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl();

  @override
  String toString() {
    return 'AuthEvent.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanded value) statusChanded,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SendPhone value) sendPhone,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SaveCode value) saveCode,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChanded value)? statusChanded,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SendPhone value)? sendPhone,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SaveCode value)? saveCode,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanded value)? statusChanded,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SendPhone value)? sendPhone,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SaveCode value)? saveCode,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register() = _$RegisterImpl;
}

/// @nodoc
mixin _$AuthState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  LoginStatus get loginStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthenticationStatus status,
      String phone,
      String code,
      LoginStatus loginStatus,
      String errorMessage});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phone = null,
    Object? code = null,
    Object? loginStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationStatus status,
      String phone,
      String code,
      LoginStatus loginStatus,
      String errorMessage});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phone = null,
    Object? code = null,
    Object? loginStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl extends _AuthenticationState {
  const _$AuthenticationStateImpl(
      {this.status = AuthenticationStatus.initial,
      this.phone = '',
      this.code = '',
      this.loginStatus = LoginStatus.initial,
      this.errorMessage = ''})
      : super._();

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final LoginStatus loginStatus;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState(status: $status, phone: $phone, code: $code, loginStatus: $loginStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, phone, code, loginStatus, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState extends AuthState {
  const factory _AuthenticationState(
      {final AuthenticationStatus status,
      final String phone,
      final String code,
      final LoginStatus loginStatus,
      final String errorMessage}) = _$AuthenticationStateImpl;
  const _AuthenticationState._() : super._();

  @override
  AuthenticationStatus get status;
  @override
  String get phone;
  @override
  String get code;
  @override
  LoginStatus get loginStatus;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
