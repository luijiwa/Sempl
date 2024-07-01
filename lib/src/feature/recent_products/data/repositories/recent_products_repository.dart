import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/main/data/model/categories/categories.dart';
import 'package:sempl/src/feature/recent_products/data/repositories/i_recent_products_repository.dart';
import 'package:sempl/src/feature/recent_products/data/data_source/recent_products_data_source.dart';

/// {@template recent_products_repository.class}
/// Implementation of [IRecentProductsRepository].
/// {@endtemplate}
final class RecentProductsRepository implements IRecentProductsRepository {
  final RecentProductsDataSource _dataSource;

  /// {@macro recent_products_repository.class}
  const RecentProductsRepository({
    required RecentProductsDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<Categories> loadCategoryData() async {
    try {
      final response = await _dataSource.loadCategoryData();
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
      return Categories.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
