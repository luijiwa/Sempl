import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/core/utils/rating_helper.dart';
import 'package:sempl/src/feature/main/data/model/categories/categories.dart';
import 'package:sempl/src/feature/main/data/model/new_sempls/new_sempls.dart';
import 'package:sempl/src/feature/main/data/repository/main_screen_repository.dart';
import 'package:sempl/src/feature/recent_products/data/repositories/i_recent_products_repository.dart';
import 'package:sempl/src/feature/recent_products/model/selected_categories.dart';

part 'recent_products_bloc.freezed.dart';
part 'recent_products_event.dart';
part 'recent_products_state.dart';

class RecentProductsBloc
    extends Bloc<RecentProductsEvent, RecentProductsState> {
  final IRecentProductsRepository _repository;
  final IMainScreenRepository<dynamic> _mainScreenRepository;
  RecentProductsBloc(this._repository, this._mainScreenRepository)
      : super(const RecentProductsState()) {
    on<_Started>(_onStarted);
    on<_LoadCategories>(_onLoadCategories);
    on<_PickMainCategory>(_onPickMainCategory);
    on<_PickSubCategory>(_onPickSubCategory);
  }

  Future<void> _onStarted(
      _Started event, Emitter<RecentProductsState> emit) async {
    emit(state.copyWith(status: ScreenStatus.loading));
    try {
      final item = await _mainScreenRepository.loadNewSemplsData();
      final updatedItems = await RatingUtils()
          .updateItemsWithRating(item.data, _mainScreenRepository);
      emit(state.copyWith(newSempls: updatedItems));
      emit(state.copyWith(status: ScreenStatus.success));
    } catch (e) {
      logger.e(e);
      emit(state.copyWith(status: ScreenStatus.failure));
    }
  }

  Future<void> _onLoadCategories(
    _LoadCategories event,
    Emitter<RecentProductsState> emit,
  ) async {
    emit(state.copyWith(screenCategoriesStatus: ScreenStatus.loading));
    try {
      final categories = await _repository.loadCategoryData();
      emit(
        state.copyWith(
          categories: categories.data,
        ),
      );
      emit(state.copyWith(screenCategoriesStatus: ScreenStatus.success));
    } catch (e) {
      logger.e(e);
      emit(state.copyWith(screenCategoriesStatus: ScreenStatus.failure));
    }
  }

  FutureOr<void> _onPickMainCategory(
      _PickMainCategory event, Emitter<RecentProductsState> emit) {
        final SelectedCategories selectedCategory = SelectedCategories(id:state.categories[event.index].id, name: state.categories[event.index].name) ;
    // emit(state.copyWith(selectedCategories: event.));
  }

  FutureOr<void> _onPickSubCategory(
      _PickSubCategory event, Emitter<RecentProductsState> emit) {}
}
