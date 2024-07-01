import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/item/data/model/rating/rating.dart';
import 'package:sempl/src/feature/login/data/auth_data_source.dart';
import 'package:sempl/src/feature/main/data/data_source/main_screen_data_source.dart';
import 'package:sempl/src/feature/main/data/model/categories/categories.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';

abstract interface class IMainScreenRepository<T> {
  /// Загрузка информации о недавних примерах
  Future<NewSempls> loadNewSemplsData();
  Future<Rating> loadRatingItem(int id);
  // Future<Categories> loadCategoryData();
}

final class MainScreenRepositoryImpl implements IMainScreenRepository {
  final MainScreenDataSource _dataSource;
  final TokenStorage _storage;
  const MainScreenRepositoryImpl({
    required MainScreenDataSource dataSource,
    required TokenStorage storage,
  })  : _dataSource = dataSource,
        _storage = storage;

  @override
  Future<NewSempls> loadNewSemplsData() async {
    try {
      final response = await _dataSource.loadSemplsData();
      if (response is Map<String, dynamic> &&
          response.containsKey('access_token')) {
        final newToken = Token(response['access_token'] as String);
        _storage.save(newToken);
      }
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
      return NewSempls.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Rating> loadRatingItem(int id) async {
    try {
      final response = await _dataSource.loadRatingItem(id);
      if (response is Map<String, dynamic> &&
          response.containsKey('access_token')) {
        final newToken = Token(response['access_token'] as String);
        _storage.save(newToken);
      }
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
      return Rating.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  // @override
  // Future<Categories> loadCategoryData() async {
  //   try {
  //     final response = await _dataSource.loadCategoryData();
  //     logger.i(response.toString());
  //     if (response == null) {
  //       throw Exception('Item not found');
  //     }
  //     return Categories.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
