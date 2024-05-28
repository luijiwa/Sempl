import 'package:sempl/src/core/components/rest_client/rest_client.dart';

abstract interface class MainScreenDataSource {
  Future<Map<String, Object?>?> loadSemplsData();
  Future<Map<String, Object?>?> loadRatingItem(String id);
}

final class MainScreenDataSourceNetwork implements MainScreenDataSource {
  final RestClient _client;
  const MainScreenDataSourceNetwork(this._client);
  @override
  Future<Map<String, Object?>?> loadSemplsData() async {
    try {
      final responce = await _client.get('/api/products/index');
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
}
