import 'package:sempl/src/core/components/database/database.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/cart/data/data_source/cart_data_source.dart';

/// Interface for [CartDataSource].
// TODO(anyone): Explain what this DataSource is used for.
class CartDataSourceNetwork implements CartDataSource {
  final RestClient _client;
  const CartDataSourceNetwork({required RestClient client}) : _client = client;

  @override
  Future<void> addItemToCart(
      {required int itemId,
      required String name,
      required String description,
      required String image}) async {
    try {
      await _client.post(
        '/api/cart',
        body: {
          'product_id': itemId,
        },
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> clearCart() {
    // TODO: implement clearCart
    throw UnimplementedError();
  }

  @override
  Future<List<CartItemsTableData>> getAllCartItems() {
    // TODO: implement getAllCartItems
    throw UnimplementedError();
  }

  @override
  Future<void> removeItemFromCart(int id) {
    // TODO: implement removeItemFromCart
    throw UnimplementedError();
  }
}
