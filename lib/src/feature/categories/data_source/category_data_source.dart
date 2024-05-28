import 'package:sempl/src/core/components/rest_client/rest_client.dart';

abstract interface class CategoryDataSource {
  Future<Map<String, Object?>?> loadCategoryData();
}

final class CategoryDataSourceNetwork implements CategoryDataSource {
  final RestClient _client;
  const CategoryDataSourceNetwork(this._client);
  @override
  Future<Map<String, Object?>?> loadCategoryData() async {
    try {
      final responce = await _client.get('/api/categories/index');
      return responce;
    } catch (e) {
      rethrow;
    }
  }
}
