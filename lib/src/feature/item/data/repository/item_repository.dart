import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/item/data/data_source/item_data_source.dart';
import 'package:sempl/src/feature/item/data/model/item/item.dart';
import 'package:sempl/src/feature/item/data/model/rating/rating.dart';

abstract interface class ItemRepository<T> {
  /// Загрузка информации о продукте
  Future<Item> loadItemData(String id);

  Future<Rating> loadRatingItem(String id);

  Future<void> addLikeToComment(int id);
  Future<void> addDislikeToComment(int id);
}

final class ItemRepositoryImpl implements ItemRepository {
  final ItemDataSource _dataSource;

  const ItemRepositoryImpl(this._dataSource);

  @override
  Future<Item> loadItemData(String id) async {
    try {
      final response = await _dataSource.loadItemData(id);
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
      return Item.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Rating> loadRatingItem(String id) async {
    try {
      final response = await _dataSource.loadRatingItem(id);
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
      return Rating.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addDislikeToComment(int id) async {
    try {
      final response = await _dataSource.addLikeToComment(id);
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addLikeToComment(int id) async {
    try {
      final response = await _dataSource.addDislikeToComment(id);
      logger.i(response.toString());
      if (response == null) {
        throw Exception('Item not found');
      }
    } catch (e) {
      rethrow;
    }
  }
}
