import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/main/data/model/categories/categories.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';
import 'package:sempl/src/feature/main/data/repository/main_screen_repository.dart';
import 'package:flutter/foundation.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final MainScreenRepository _mainScreenRepository;
  MainScreenBloc(this._mainScreenRepository) : super(const MainScreenState()) {
    on<_LoadCategories>(_onLoadCategories);
    on<_SearchCategory>(_onSearchCategory);
    on<_PickCategory>(_onPickCategory);

    on<_Started>((event, emit) async {
      emit(state.copyWith(screenStatus: ScreenStatus.loading));
      try {
        final item = await _mainScreenRepository.loadNewSemplsData();
        emit(state.copyWith(
          newSempls: item.data,
        ));
        final updatedList = List<NewSemplsData>.from(state.newSempls);

        for (int i = 0; i < updatedList.length; i++) {
          final ratingData =
              await _mainScreenRepository.loadRatingItem(item.data[i].id);
          if (ratingData.data.isNotEmpty) {
            logger.e(ratingData.toString());
            final ratings = ratingData.data;
            double rating = 0.0;
            for (var j = 0; j < ratings.length; j++) {
              rating = rating + ratings[j].rating;
            }
            final ratingSum = rating / ratings.length;
            updatedList[i] = updatedList[i]
                .copyWith(rating: ratingSum, countRating: ratings.length);
            emit(state.copyWith(newSempls: updatedList));
          }
        }
        emit(state.copyWith(screenStatus: ScreenStatus.success));
      } catch (e) {
        logger.e(e);
        emit(state.copyWith(screenStatus: ScreenStatus.failure));
      }
    });
  }

  Future<void> _onLoadCategories(
      _LoadCategories event, Emitter<MainScreenState> emit) async {
    emit(state.copyWith(screenCategoriesStatus: ScreenStatus.loading));
    try {
      final categories = await _mainScreenRepository.loadCategoryData();
      emit(state.copyWith(
        categories: categories.data,
      ));
      emit(state.copyWith(screenCategoriesStatus: ScreenStatus.success));
    } catch (e) {
      logger.e(e);
      emit(state.copyWith(screenCategoriesStatus: ScreenStatus.failure));
    }
  }

  FutureOr<void> _onSearchCategory(
      _SearchCategory event, Emitter<MainScreenState> emit) {
    List<CategoriesData> results = state.categories
        .where((item) => item.name.contains(event.query))
        .toList();
    logger.i(results);
    emit(state.copyWith(searchResults: results));
  }

  FutureOr<void> _onPickCategory(
      _PickCategory event, Emitter<MainScreenState> emit) {}
}
