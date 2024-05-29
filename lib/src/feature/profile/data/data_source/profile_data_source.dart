import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/profile/data/model/user_data.dart';

abstract interface class ProfileDataSource {
  Future<Map<String, Object?>?> loadUserData();

  Future<Map<String, Object?>?> loadUserSamples();
  Future<Map<String, Object?>?> sendProfileDataChange(
      Map<String, dynamic> body);
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

  @override
  Future<Map<String, Object?>?> loadUserSamples() async {
    try {
      final response = await _client.get('/api/orders/userOrders');
      if (response == null) {
        throw const FormatException('Непонятный ответ сервера');
      }
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, Object?>?> sendProfileDataChange(
      Map<String, dynamic> body) async {
    try {
      final response = await _client.put('/api/users/22/update', body: body);
    } catch (e) {
      rethrow;
    }
  }
}
