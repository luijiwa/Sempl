import 'dart:async';

import 'package:my_app/src/core/components/rest_client/rest_client.dart';
import 'package:my_app/src/core/utils/preferences_dao.dart';
import 'package:my_app/src/feature/login/data/auth_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template token_storage_sp}
/// Implementation of [TokenStorage] that uses [TypedEntry] to store
/// the authorization info.
/// {@endtemplate}
final class TokenStorageSP implements TokenStorage<Token> {
  /// {@macro token_storage_sp}
  TokenStorageSP({required SharedPreferences sharedPreferences})
      : _accessToken = TypedEntry(
          sharedPreferences: sharedPreferences,
          key: 'authorization.access_token',
        );

  late final PreferencesEntry<String> _accessToken;
  final _streamController = StreamController<Token?>.broadcast();

  @override
  Future<Token?> load() async {
    final accessToken = _accessToken.read();
    if (accessToken == null) {
      return null;
    }

    return Token(accessToken);
  }

  @override
  Future<void> save(Token tokenPair) async {
    await _accessToken.set(tokenPair.accessToken);

    _streamController.add(tokenPair);
  }

  @override
  Future<void> clear() async {
    await _accessToken.remove();
    _streamController.add(null);
  }

  @override
  Stream<Token?> getStream() => _streamController.stream;

  @override
  Future<void> close() => _streamController.close();
}
