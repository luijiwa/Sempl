import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/profile/data/model/user_data.dart';

abstract interface class ProfileDataSource {
  Future<UserData> loadUserData();
}

final class ProfileDataSourceNetwork implements ProfileDataSource {
  final RestClient _client;
  const ProfileDataSourceNetwork(this._client);
  @override
  Future<UserData> loadUserData() async {
    try {
      final response = await _client.get('/api/users/CurrentUser');

      if (response == null) {
        throw const FormatException('Непонятный ответ сервера');
      }
      return UserData.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
