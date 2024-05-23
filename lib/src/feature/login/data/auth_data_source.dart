import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/utils/logger.dart';

/// Token is a simple class that holds the access and refresh token
class Token {
  /// Create a [Token]
  const Token(this.accessToken);

  /// Access token (used to authenticate the user)
  final String accessToken;
}

/// Data source for authentication
abstract interface class AuthDataSource<T> {
  /// Sign in first step with phone
  Future<bool> signInFirstStepWithPhone(String phone);

  /// Sign in with phone and code
  Future<T> signInWithEmailAndPassword(String phone, String code);

  /// Sign out
  Future<void> signOut();
}

/// Auth data source that interacts with backend
/// and interprets the response as [Token] or throws [AuthenticationException]
final class AuthDataSourceNetwork implements AuthDataSource<Token> {
  final RestClient _client;

  /// Create an [AuthDataSourceNetwork]
  const AuthDataSourceNetwork({required RestClient client}) : _client = client;

  @override
  Future<Token> signInWithEmailAndPassword(
    String phone,
    String code,
  ) async {
    logger.debug('Не тот запрос пошел');
    final response = await _client.post(
      '/api/client/auth/checkSmsCode',
      body: {
        'phone': phone,
        'code': code,
      },
    );

    // Check if response is an error
    if (response
        case {
          'error': {
            // optional message provided by the server
            'message': final String message,
            // system error code
            'code': final int code,
          }
        }) {
      throw switch (code) {
        WrongCredentialsException.code => const WrongCredentialsException(),
        _ => UnknownAuthenticationException(code: code, error: message)
      };
    }
    logger.info(response ?? 'No response');

    // Check if response contains access_token and refresh_token
    if (response
        case {
          'token': final String accessToken,
        }) {
      return Token(accessToken);
    }

    // If we can't understand the response, throw a format exception
    throw FormatException(
      'Returned response is not understood by the application',
      response,
    );
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<bool> signInFirstStepWithPhone(String phone) async {
    final response = await _client.post(
      '/api/client/auth/requestSmsCode',
      body: {
        "phone": phone,
      },
    );
    logger.info(response ?? 'No response');

    // Check if response is an error
    if (response
        case {
          'error': {
            // optional message provided by the server
            'message': final String message,
            // system error code
            'code': final int code,
          }
        }) {
      throw switch (code) {
        WrongCredentialsException.code => const WrongCredentialsException(),
        _ => UnknownAuthenticationException(code: code, error: message)
      };
    }

    // Check if response contains access_token and refresh_token
    if (response
        case {
          'phone': final String phone,
        }) {
      return true;
    }

    // If we can't understand the response, throw a format exception
    throw FormatException(
      'Returned response is not understood by the application',
      response,
    );
  }
}

/// Exception thrown when the authentication fails
base class AuthenticationException implements Exception {
  /// Create a [AuthenticationException]
  const AuthenticationException();
}

/// Exception thrown when the credentials are wrong
final class WrongCredentialsException implements AuthenticationException {
  /// Create a [WrongCredentialsException]
  const WrongCredentialsException();

  /// [10001] is the system error code for wrong credentials
  static const int code = 10001;
}

/// Unknown authentication exception
final class UnknownAuthenticationException implements AuthenticationException {
  /// System error code, that is not understood
  final int? code;

  /// Error message
  final Object error;

  /// Create a [UnknownAuthenticationException]
  const UnknownAuthenticationException({
    required this.error,
    this.code,
  });
}
