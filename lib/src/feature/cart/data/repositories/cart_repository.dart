import 'package:sempl/src/feature/cart/data/data_source/cart_data_source.dart';
import 'package:sempl/src/feature/cart/data/repositories/i_cart_repository.dart';
import 'package:sempl/src/feature/cart/model/cart_item.dart';

/// {@template cart_repository.class}
/// Implementation of [ICartRepository].
/// {@endtemplate}
final class LocalCartRepository implements ICartRepository {
  final CartDataSource _dataSource;

  /// {@macro cart_repository.class}
  const LocalCartRepository({
    required CartDataSource dataSource,
  }) : _dataSource = dataSource;
  @override
  Future<void> addItemToCart({
    required int itemId,
    required String name,
    required String description,
    required String image,
  }) async {
    await _dataSource.addItemToCart(
      itemId: itemId,
      name: name,
      description: description,
      image: image,
    );
  }

  @override
  Future<List<CartItem>> getAllCartItems() async {
    final result = await _dataSource.getAllCartItems();

    return result
        .map(
          (dto) => CartItem(
            id: dto.itemId,
            name: dto.name,
            description: dto.description,
            image: dto.image,
          ),
        )
        .toList();
  }

  @override
  Future<void> removeItemFromCart(int id) async =>
      _dataSource.removeItemFromCart(id);

  @override
  Future<void> clearCart() async => _dataSource.clearCart();
}
