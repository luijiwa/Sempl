import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/categories/data_source/category_data_source.dart';
import 'package:sempl/src/feature/item/data/model/item/item.dart';

abstract interface class CategoryRepository<T> {
  /// Загрузка  категорий
  Future<Category> loadCategoryData();
}

final class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource _dataSource;

  const CategoryRepositoryImpl(this._dataSource);

  @override
  Future<Category> loadCategoryData() async {
    try {
      final response = await _dataSource.loadCategoryData();
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
      return Category.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
