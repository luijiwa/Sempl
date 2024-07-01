import 'package:sempl/src/feature/cart/data/repositories/cart_repository.dart';
import 'package:sempl/src/feature/cart/model/cart_item.dart';

/// Interface for [LocalCartRepository].
// TODO(anyone): Explain what this repository is used for.
abstract interface class ICartRepository {
  Future<List<CartItem>> getAllCartItems();

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
