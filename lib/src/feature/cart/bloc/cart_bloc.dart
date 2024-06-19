import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/cart/data/repositories/i_cart_repository.dart';
import 'package:sempl/src/feature/cart/model/cart_item.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartRepository _repository;
  CartBloc(this._repository) : super(const CartState()) {
    on<_Started>(_onStarted);
    on<_LoadingData>(_onLoadingData);
    on<_AddItemToCart>(_onAddItemToCart);
    on<_DeleteItemFromCart>(_onDeleteItemFromCart);
    on<_ClearCart>(_onClearCart);
  }

  Future<void> _onStarted(_Started event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      final cartItems = await _repository.getAllCartItems();
      if (cartItems.isEmpty) {
        emit(state.copyWith(status: ScreenStatus.empty));
      } else {
        emit(
          state.copyWith(
            status: ScreenStatus.success,
          ),
        );
      }
    } catch (e, stackTrace) {
      logger.e(e, stackTrace: stackTrace);
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }

  Future<void> _onAddItemToCart(
    _AddItemToCart event,
    Emitter<CartState> emit,
  ) async {
    try {
      final cartItem = CartItem(
        id: event.id,
        name: event.name,
        description: event.description,
        image: event.image,
      );
      await _repository.addItemToCart(
        itemId: event.id,
        name: event.name,
        description: event.description,
        image: event.image,
      );
      emit(
        state.copyWith(
          status: ScreenStatus.success,
          items: state.items + [cartItem],
        ),
      );
    } catch (e, stackTrace) {
      logger.e(e.toString(), error: e, stackTrace: stackTrace);
    }
  }

  Future<void> _onDeleteItemFromCart(
    _DeleteItemFromCart event,
    Emitter<CartState> emit,
  ) async {
    try {
      final id = event.id;
      await _repository.removeItemFromCart(id);
      emit(
        state.copyWith(
          status: ScreenStatus.success,
          items: state.items.where((element) => element.id != id).toList(),
        ),
      );
    } catch (e, stackTrace) {
      logger.e(e.toString(), error: e, stackTrace: stackTrace);
    }
  }

  Future<void> _onClearCart(
    _ClearCart event,
    Emitter<CartState> emit,
  ) async {
    try {
      await _repository.clearCart();
      emit(state.copyWith(status: ScreenStatus.empty, items: []));
    } catch (e, stackTrace) {
      logger.e(e.toString(), error: e, stackTrace: stackTrace);
    }
  }

  FutureOr<void> _onLoadingData(event, Emitter<CartState> emit) {}
}
