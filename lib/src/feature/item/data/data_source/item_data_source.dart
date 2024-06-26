import 'package:sempl/src/core/components/rest_client/rest_client.dart';

abstract interface class ItemDataSource {
  Future<Map<String, Object?>?> loadItemData(String id);

  Future<Map<String, Object?>?> loadRatingItem(String id);

  Future<Map<String, Object?>?> addLikeToComment(int id);

  Future<Map<String, Object?>?> addDislikeToComment(int id);
}

final class ItemDataSourceNetwork implements ItemDataSource {
  final RestClient _client;
  const ItemDataSourceNetwork(this._client);
  @override
  Future<Map<String, Object?>?> loadItemData(String id) async {
    try {
      final responce = await _client.get('/api/products/$id/show');
      return responce;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, Object?>?> loadRatingItem(String id) async {
    try {
      final responce = await _client.get('/api/products/$id/reviews');
      return responce;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, Object?>?> addDislikeToComment(int id) async {
    try {
      final responce = await _client.post('/api/reviews/$id/like', body: {});
      return responce;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, Object?>?> addLikeToComment(int id) async {
    try {
      final responce = await _client.post('/api/reviews/$id/dislike', body: {});
      return responce;
    } catch (e) {
      rethrow;
    }
  }
}
