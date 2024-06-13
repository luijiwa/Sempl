import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/cart/data/data_source/cart_data_source.dart';

/// {@template cart_data_source_network.class}
/// Implementation of [CartDataSource].
/// {@endtemplate}
final class CartDataSourceNetwork implements CartDataSource {
  /// {@macro cart_data_source_network.class}
  final RestClient _client;

  const CartDataSourceNetwork(this._client);
}
