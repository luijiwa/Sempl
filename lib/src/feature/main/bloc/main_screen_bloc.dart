import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';
import 'package:sempl/src/feature/main/data/repository/main_screen_repository.dart';
import 'package:flutter/foundation.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final MainScreenRepository _mainScreenRepository;
  MainScreenBloc(this._mainScreenRepository) : super(const MainScreenState()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(screenStatus: ScreenStatus.loading));
      try {
        final item = await _mainScreenRepository.loadNewSemplsData();
        emit(state.copyWith(
          newSempls: item.data,
        ));
        final updatedList = List<NewSemplsData>.from(state.newSempls);
        for (var i = 0; i < item.data.length; i++) {
          final id = item.data[i].id;
          final ratingRequest = await _mainScreenRepository.loadRatingItem(id);
          logger.e(ratingRequest.toString());
          final rating = ratingRequest.data[i];
          final sum = ratingRequest.data
              .map((e) => e.rating)
              .reduce((value, element) => value + element);
          double ratingSum = sum / ratingRequest.data.length;

          ratingSum = ratingSum / ratingRequest.data.length;
          final updatedItem = updatedList[i] = updatedList[i].copyWith(
              rating: ratingSum, countRating: ratingRequest.data.length);
          emit(state.copyWith(newSempls: updatedList));
        }
        emit(state.copyWith(screenStatus: ScreenStatus.success));
      } catch (e) {
        logger.e(e);
        emit(state.copyWith(screenStatus: ScreenStatus.failure));
      }
    });
  }
}
