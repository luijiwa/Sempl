import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/login/data/auth_data_source.dart';

/// AuthRepository
abstract interface class AuthRepository<T> implements AuthStatusDataSource {
  /// Sign in first step with phone
  Future<int> signInFirstStepWithPhone(String phone);

  /// Sign in with phone and code
  Future<T> signInWithPhoneAndCode(String phone, String code);

  /// Submit code for registration
  Future<void> registrationRequest(String phone);

  Future<T> registrationWithPhoneAndCode(String phone, String code);

  /// Submit registration form
  Future<T> submitRegistrationForm(Map<String, String> form);

  /// Sign out
  Future<void> signOut();
}

/// AuthRepositoryImpl
final class AuthRepositoryImpl<T> implements AuthRepository<T> {
  final AuthDataSource<T> _dataSource;
  final TokenStorage<T> _storage;

  /// Create an [AuthRepositoryImpl]
  const AuthRepositoryImpl({
    required AuthDataSource<T> dataSource,
    required TokenStorage<T> storage,
  })  : _dataSource = dataSource,
        _storage = storage;

  @override
  Future<T> signInWithPhoneAndCode(String phone, String code) async {
    try {
      final token = await _dataSource.signInWithPhoneAndCode(phone, code);

      await _storage.save(token);

      return token;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    // await _dataSource.signOut();
    await _storage.clear();
  }

  @override
  Stream<AuthenticationStatus> getAuthenticationStatusStream() =>
      _storage.getStream().map(
            (token) => token != null
                ? AuthenticationStatus.authenticated
                : AuthenticationStatus.unauthenticated,
          );

  @override
  Future<int> signInFirstStepWithPhone(String phone) async => await _dataSource.signInFirstStepWithPhone(phone);

  @override
  Future<void> registrationRequest(String phone) async => await _dataSource.registrationRequest(phone);

  @override
  Future<T> submitRegistrationForm(Map<String, String> form) async => await _dataSource.submitRegistrationForm(form);

  @override
  Future<T> registrationWithPhoneAndCode(String phone, String code) async {
    final token = await _dataSource.registrationWithPhoneAndCode(phone, code);
    await _storage.save(token);

    return token;
  }
}
