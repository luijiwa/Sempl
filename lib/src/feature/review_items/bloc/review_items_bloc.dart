import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/review_items/data/repositories/i_review_items_repository.dart';

part 'review_items_bloc.freezed.dart';
part 'review_items_event.dart';
part 'review_items_state.dart';

class ReviewItemsBloc extends Bloc<ReviewItemsEvent, ReviewItemsState> {
  final IReviewItemsRepository _repository;
  ReviewItemsBloc(this._repository) : super(const ReviewItemsState()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
      _Started event, Emitter<ReviewItemsState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      emit(
        state.copyWith(
          status: ScreenStatus.success,
        ),
      );
    } catch (e, stackTrace) {
      logger.e(e, stackTrace: stackTrace);
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }
}
