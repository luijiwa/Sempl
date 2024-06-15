import 'package:sempl/src/feature/cart/data/data_source/cart_data_source.dart';
import 'package:sempl/src/feature/cart/data/repositories/i_cart_repository.dart';

/// {@template cart_repository.class}
/// Implementation of [ICartRepository].
/// {@endtemplate}
final class CartRepository implements ICartRepository {
  final CartDataSource _dataSource;

  /// {@macro cart_repository.class}
  const CartRepository({
    required CartDataSource dataSource,
  }) : _dataSource = dataSource;
}
