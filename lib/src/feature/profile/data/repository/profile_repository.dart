import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/profile/data/data_source/profile_data_source.dart';
import 'package:sempl/src/feature/profile/data/model/user_data.dart';

abstract interface class ProfileRepository<T> {
  Future<UserData> loadUserData();
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
  Future<UserData> loadUserData() => _dataSource.loadUserData();
}
