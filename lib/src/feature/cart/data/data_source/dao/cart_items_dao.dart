import 'package:drift/drift.dart';
import 'package:sempl/src/core/components/database/database.dart';
import 'package:sempl/src/core/components/database/src/tables/cart_items_table.dart';
import 'package:sempl/src/feature/cart/data/data_source/cart_data_source.dart';

part 'cart_items_dao.g.dart';

@DriftAccessor(tables: [CartItemsTable])
class CartItemsDao extends DatabaseAccessor<AppDatabase>
    with _$CartItemsDaoMixin
    implements CartDataSource {
  CartItemsDao(super.attachedDatabase);
  @override
  Future<List<CartItemsTableData>> getAllCartItems() async =>
      select(attachedDatabase.cartItemsTable).get();

  @override
  Future<void> addItemToCart({
    required int itemId,
    required String name,
    required String description,
    required String image,
  }) {
    final cartItem = CartItemsTableCompanion(
      itemId: Value(itemId),
      name: Value(name),
      description: Value(description),
      image: Value(image),
    );
    return into(attachedDatabase.cartItemsTable).insert(cartItem);
  }

  @override
  Future<void> removeItemFromCart(int id) async {
    await (delete(attachedDatabase.cartItemsTable)
          ..where((entry) => entry.itemId.equals(id)))
        .go();
  }

  @override
  @override
  Future<void> clearCart() => delete(attachedDatabase.cartItemsTable).go();
}
