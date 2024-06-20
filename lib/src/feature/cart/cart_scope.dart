import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/extentions/context_extension.dart';
import 'package:sempl/src/feature/cart/bloc/cart_bloc.dart';
import 'package:sempl/src/feature/cart/model/cart_item.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';

/// Cart controller
abstract interface class CartController {
  /// Cart status
  ScreenStatus get status;

  /// Load data
  void loadData();

  void addItemToCart({
    required int itemId,
    required String name,
    required String description,
    required String image,
  });

  /// Delete a [CartItem] from the cart.
  void deleteItemFromCart(int id);

  /// Clear all items from the cart.
  void clearCart();
}

/// Scope that controls the cart state
class CartScope extends StatefulWidget {
  /// Create an [CartScope]
  const CartScope({required this.child, super.key});

  /// The child widget
  final Widget child;

  /// Get the [CartController] from the [BuildContext]
  static CartController of(BuildContext context, {bool listen = true}) =>
      context.inhOf<_CartInherited>(listen: listen).controller;

  @override
  State<CartScope> createState() => _CartScopeState();
}

class _CartScopeState extends State<CartScope> implements CartController {
  late final CartBloc _cartBloc;
  late CartState _state;

  @override
  void initState() {
    super.initState();
    _cartBloc = DependenciesScope.of(context).cartBloc;
    _state = _cartBloc.state;
  }

  @override
  ScreenStatus get status => _state.status;

  @override
  void loadData() => _cartBloc.add(const CartEvent.loadingData());

  @override
  Widget build(BuildContext context) => BlocBuilder<CartBloc, CartState>(
        bloc: _cartBloc,
        builder: (context, state) {
          _state = state;

          return _CartInherited(
            controller: this,
            state: _cartBloc.state,
            child: widget.child,
          );
        },
      );

  @override
  void addItemToCart(
      {required int itemId,
      required String name,
      required String description,
      required String image,}) {
    _cartBloc.add(
      CartEvent.addItemToCart(
        id: itemId,
        name: name,
        description: description,
        image: image,
      ),
    );
  }

  @override
  void clearCart() {
    _cartBloc.add(const CartEvent.clearCart());
  }

  @override
  void deleteItemFromCart(int id) {
    _cartBloc.add(CartEvent.deleteItemFromCart(id: id));
  }
}

final class _CartInherited extends InheritedWidget {
  final CartController controller;
  final CartState state;

  const _CartInherited({
    required super.child,
    required this.controller,
    required this.state,
  });

  @override
  bool updateShouldNotify(covariant _CartInherited oldWidget) =>
      state != oldWidget.state;
}
