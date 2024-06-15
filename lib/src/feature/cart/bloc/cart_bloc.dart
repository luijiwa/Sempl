import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/cart/data/repositories/i_cart_repository.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartRepository _repository;
  CartBloc(this._repository) : super(const CartState()) {
    on<_Started>(_onStarted);
    on<_LoadingData>(_onLoadingData);
  }

  Future<void> _onStarted(_Started event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      emit(
        state.copyWith(
          status: ScreenStatus.empty,
        ),
      );
    } catch (e, stackTrace) {
      logger.e(e, stackTrace: stackTrace);
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }

  FutureOr<void> _onLoadingData(event, Emitter<CartState> emit) {}
}
