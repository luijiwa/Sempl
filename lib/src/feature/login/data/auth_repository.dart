import 'package:my_app/src/core/components/rest_client/rest_client.dart';
import 'package:my_app/src/feature/login/data/auth_data_source.dart';

/// AuthRepository
abstract interface class AuthRepository<T> implements AuthStatusDataSource {
  /// Sign in first step with phone
  Future<bool> signInFirstStepWithPhone(String phone);

  /// Sign in with phone and code
  Future<T> signInWithPhoneAndCode(String phone, String code);

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
  Future<T> signInWithPhoneAndCode(
    String email,
    String password,
  ) async {
    final token = await _dataSource.signInWithEmailAndPassword(email, password);
    await _storage.save(token);

    return token;
  }

  @override
  Future<void> signOut() async {
    await _dataSource.signOut();
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
  Future<bool> signInFirstStepWithPhone(String phone) {
    return _dataSource.signInFirstStepWithPhone(phone);
  }
}
