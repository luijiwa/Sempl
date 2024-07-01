import 'package:sempl/src/core/components/rest_client/rest_client.dart';

abstract interface class MainScreenDataSource {
  Future<Map<String, Object?>?> loadSemplsData();
  Future<Map<String, Object?>?> loadRatingItem(int id);
  // Future<Map<String, Object?>?> loadCategoryData();
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
  Future<Map<String, Object?>?> loadRatingItem(int id) async {
    try {
      final responce = await _client.get('/api/products/$id/reviews');
      return responce;
    } catch (e) {
      rethrow;
    }
  }

  // @override
  // Future<Map<String, Object?>?> loadCategoryData() async {
  //   try {
  //     final responce = await _client.get('/api/categories/index');
  //     return responce;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
