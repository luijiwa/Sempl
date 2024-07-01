import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/recent_products/data/data_source/recent_products_data_source.dart';

/// {@template recent_products_data_source_network.class}
/// Implementation of [RecentProductsDataSource].
/// {@endtemplate}
final class RecentProductsDataSourceNetwork
    implements RecentProductsDataSource {
  /// {@macro recent_products_data_source_network.class}
  final RestClient _client;

  const RecentProductsDataSourceNetwork(this._client);
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
