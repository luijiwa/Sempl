import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/utils/logger.dart';

/// Класс, содержащий токены доступа и обновления
class Token {
  /// Создание [Token]
  const Token(this.accessToken);

  /// Токен доступа (используется для аутентификации пользователя)
  final String accessToken;
}

/// Источник данных для аутентификации
abstract interface class AuthDataSource<T> {
  /// Первый шаг входа с использованием телефона
  Future<int> signInFirstStepWithPhone(String phone);

  /// Вход с использованием телефона и кода
  Future<T> signInWithPhoneAndCode(String phone, String code);

  /// Отправка кода для регистрации
  Future<void> registrationRequest(String phone);

  Future<T> registrationWithPhoneAndCode(String phone, String code);

  /// Отправка регистрационной формы
  Future<T> submitRegistrationForm(Map<String, String> form);

  /// Выход из системы
  Future<void> signOut();
}

/// Источник данных для аутентификации, работающий с бэкендом
final class AuthDataSourceNetwork implements AuthDataSource<Token> {
  final RestClient _client;

  /// Создание [AuthDataSourceNetwork]
  const AuthDataSourceNetwork({required RestClient client}) : _client = client;

  @override
  Future<int> signInFirstStepWithPhone(String phone) async {
    Map<String, Object?>? response;

    try {
      response = await _client.post(
        '/api/auth/send-code-auth', //точно
        body: {
          'phone': phone,
        },
      );
      logger.info('HEHEHHEHE $response');
      _checkForErrors(response);

      return 1;
    } on Object catch (e) {
      if (e is RestClientException && e.statusCode == 400) {
        logger.error('Телефон не зарегистрирован');
        return 0;
      } else {
        logger.error('Ошибка при первом шаге входа: $e');
        rethrow;
      }
    }
  }

  @override
  Future<Token> signInWithPhoneAndCode(String phone, String code) async {
    logger.i('Запрос на проверку кода SMS');
    try {
      final response = await _client.post(
        '/api/auth/verify-code-and-auth', //точно
        body: {
          'phone': phone,
          'verification_code': code,
        },
      );
      logger.i('Ответ сервера: $response');

      _checkForErrors(response);

      if (response is Map<String, dynamic> &&
          response.containsKey('access_token')) {
        return Token(response['access_token'] as String);
      }

      throw FormatException('Непонятный ответ сервера', response);
    } on Object catch (e) {
      logger.e('Не удалось проверить код', error: e);
      throw FormatException('Непонятный ответ сервера', e);
    }
  }

  @override
  Future<Token> registrationWithPhoneAndCode(String phone, String code) async {
    logger.i('Запрос на проверку кода SMS');
    try {
      final response = await _client.post(
        '/api/auth/verify-code',
        body: {
          'phone': phone,
          'verification_code': code,
        },
      );
      logger.i('Ответ сервера: $response');

      _checkForErrors(response);

      if (response is Map<String, dynamic> &&
          response.containsKey('access_token')) {
        return Token(response['access_token'] as String);
      }

      throw FormatException('Непонятный ответ сервера', response);
    } on Object catch (e) {
      logger.e('Не удалось проверить код', error: e);
      throw FormatException('Непонятный ответ сервера', e);
    }
  }

  @override
  Future<void> signOut() async {
    final response = await _client.post(
      '/api/logout',
      body: {},
    );
  }

  @override
  Future<void> registrationRequest(String phone) async {
    Map<String, Object?>? response;
    try {
      response = await _client.post(
        '/api//auth/send-code', //точно
        body: {
          'phone': phone,
        },
      );
    } catch (e) {
      logger.e('Не удалось отправить код', error: e);
      throw FormatException('Непонятный ответ сервера', response);
    }

    if (response == null || response.isEmpty) {
      throw FormatException('Непонятный ответ сервера', response);
    }
  }

  @override
  Future<Token> submitRegistrationForm(Map<String, String> form) async {
    final response = await _client.post(
      '/api/auth/verify-code-and-register', //точно
      body: form,
    );

    _checkForErrors(response);

    if (response is Map<String, dynamic> &&
        response.containsKey('access_token')) {
      return Token(response['access_token'] as String);
    }

    throw FormatException('Непонятный ответ сервера', response);
  }

  void _checkForErrors(Map<String, dynamic>? response) {
    if (response is Map<String, dynamic> && response.containsKey('error')) {
      final error = response['error'];
      final code = error['code'];
      final message = error['message'];

      throw switch (code) {
        WrongCredentialsException.code => const WrongCredentialsException(),
        _ => UnknownAuthenticationException(
            code: code as int,
            error: message as Object,
          ),
      };
    }
  }
}

/// Исключение, выбрасываемое при ошибке аутентификации
base class AuthenticationException implements Exception {
  /// Создание [AuthenticationException]
  const AuthenticationException();
}

/// Исключение, выбрасываемое при неправильных учетных данных
final class WrongCredentialsException implements AuthenticationException {
  /// Создание [WrongCredentialsException]
  const WrongCredentialsException();

  /// [10001] системный код ошибки для неправильных учетных данных
  static const int code = 10001;
}

/// Неизвестное исключение аутентификации
final class UnknownAuthenticationException implements AuthenticationException {
  /// Системный код ошибки, который не понят
  final int? code;

  /// Сообщение об ошибке
  final Object error;

  /// Создание [UnknownAuthenticationException]
  const UnknownAuthenticationException({
    required this.error,
    this.code,
  });
}
