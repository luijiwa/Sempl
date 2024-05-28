import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/screen_status.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/profile/data/model/user_data.dart';
import 'package:sempl/src/feature/profile/data/model/user_orders/user_orders.dart';
import 'package:sempl/src/feature/profile/data/repository/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository) : super(const ProfileState()) {
    on<_Load>(_loadUserData);
  }

  Future<void> _loadUserData(_Load event, Emitter<ProfileState> emit) async {
    try {
      emit(state.copyWith(screenStatus: ScreenStatus.loading));
      final userData = await _profileRepository.loadUserData();
      final userSamples = await _profileRepository.loadUserSamples();
      emit(state.copyWith(
        screenStatus: ScreenStatus.success,
        userFields: userData.user,
        orders: userSamples.orders,
      ));
    } on Object catch (e) {
      emit(state.copyWith(screenStatus: ScreenStatus.failure));
      logger.e(e);
    }
  }
}
