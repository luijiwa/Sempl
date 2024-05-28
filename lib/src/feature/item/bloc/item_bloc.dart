import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/feature/item/data/model/item/item.dart';
import 'package:sempl/src/feature/item/data/model/rating/rating.dart';
import 'package:sempl/src/feature/item/data/repository/item_repository.dart';

part 'item_event.dart';
part 'item_state.dart';
part 'item_bloc.freezed.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final ItemRepository _itemRepository;

  ItemBloc(this._itemRepository) : super(const ItemState()) {
    on<_LoadItem>(_onLoadItem);
  }

  Future<void> _onLoadItem(_LoadItem event, Emitter<ItemState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      final item = await _itemRepository.loadItemData(
        event.id,
      );
      emit(state.copyWith(item: item));
    } catch (e) {
      emit(state.copyWith(status: ScreenStatus.failure));
    }
    try {
      final itemRating = await _itemRepository.loadRatingItem(
        event.id,
      );
      emit(state.copyWith(itemRating: itemRating));
    } catch (e) {
      emit(state.copyWith(status: ScreenStatus.failure));
    }
    for (var i = 0; i < state.itemRating.data.length; i++) {
      final rating = state.itemRating.data[i];
      final sum = state.itemRating.data
          .map((e) => e.rating)
          .reduce((value, element) => value + element);
      final ratingSum = sum / state.itemRating.data.length;
      emit(
        state.copyWith(sumRating: ratingSum),
      );
    }
    emit(state.copyWith(status: ScreenStatus.success));
  }
}
