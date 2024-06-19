import 'package:sempl/src/core/components/database/database.dart';

/// Interface for [CartDataSource].
// TODO(anyone): Explain what this DataSource is used for.
abstract interface class CartDataSource {
  Future<List<CartItemsTableData>> getAllCartItems();

  Future<void> addItemToCart({
    required int itemId,
    required String name,
    required String description,
    required String image,
  });
  Future<void> removeItemFromCart(int id);
  // Future<void> cartItemDecrement(int id);
  // Future<void> cartItemIncrement(int id);

  Future<void> clearCart();
}
