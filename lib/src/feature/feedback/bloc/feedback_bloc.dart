import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc() : super(const FeedbackState()) {
    on<FeedbackMinusChange>(_onMinusChange);
    on<FeedbackPlusChange>(_onPlusChange);
  }

  FutureOr<void> _onMinusChange(
      FeedbackMinusChange event, Emitter<FeedbackState> emit) {
    emit(state.copyWith(
      minusIsEnabeled: !state.minusIsEnabeled,
    ));
  }

  FutureOr<void> _onPlusChange(
      FeedbackPlusChange event, Emitter<FeedbackState> emit) {
    emit(state.copyWith(
      plusIsEnabeled: !state.plusIsEnabeled,
    ));
  }
}
