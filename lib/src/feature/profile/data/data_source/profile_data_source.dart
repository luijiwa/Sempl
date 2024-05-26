import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/profile/data/model/user_data.dart';

abstract interface class ProfileDataSource {
  Future<Map<String, Object?>?> loadUserData();
}

final class ProfileDataSourceNetwork implements ProfileDataSource {
  final RestClient _client;
  const ProfileDataSourceNetwork(this._client);
  @override
  Future<Map<String, Object?>?> loadUserData() async {
    try {
      final response = await _client.get('/api/users/CurrentUser');

      if (response == null) {
        throw const FormatException('Непонятный ответ сервера');
      }
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
