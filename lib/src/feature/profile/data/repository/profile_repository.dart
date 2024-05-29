import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/login/data/auth_data_source.dart';
import 'package:sempl/src/feature/profile/data/data_source/profile_data_source.dart';
import 'package:sempl/src/feature/profile/data/model/user_data.dart';
import 'package:sempl/src/feature/profile/data/model/user_orders/user_orders.dart';

abstract interface class ProfileRepository<T> {
  Future<UserData> loadUserData();

  Future<UserOrders> loadUserSamples();
  Future<void> sendProfileDataChange(Map<String, dynamic> body);
}

final class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _dataSource;
  final TokenStorage _storage;

  const ProfileRepositoryImpl({
    required ProfileDataSource dataSource,
    required TokenStorage storage,
  })  : _dataSource = dataSource,
        _storage = storage;

  @override
  Future<UserData> loadUserData() async {
    final response = await _dataSource.loadUserData();
    if (response is Map<String, dynamic> &&
        response.containsKey('access_token')) {
      final newToken = Token(response['access_token']);
      await _storage.save(newToken);
    }
    return UserData.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<UserOrders> loadUserSamples() async {
    try {
      final response = await _dataSource.loadUserSamples();
      if (response is Map<String, dynamic> &&
          response.containsKey('access_token')) {
        final newToken = Token(response['access_token']);
        await _storage.save(newToken);
      }
      return UserOrders.fromJson(response as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> sendProfileDataChange(Map<String, dynamic> body) {
    try {
      return _dataSource.sendProfileDataChange(body);
    } catch (e) {
      rethrow;
    }
  }
}
