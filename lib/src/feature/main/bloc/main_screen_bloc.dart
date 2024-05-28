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
        if (kDebugMode) await Future.delayed(const Duration(seconds: 2));
        emit(state.copyWith(
          screenStatus: ScreenStatus.success,
          newSempls: item,
        ));
      } catch (e) {
        logger.e(e);
        emit(state.copyWith(screenStatus: ScreenStatus.failure));
      }
    });
  }
}
