import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/button_push.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/delivery/data/model/address.dart';
import 'package:sempl/src/feature/profile/data/repository/profile_repository.dart';

part 'delivery_bloc.freezed.dart';
part 'delivery_event.dart';
part 'delivery_state.dart';

class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  final ProfileRepository
      _profileRepository; //Так как достаточно только репо профиля

  DeliveryBloc(this._profileRepository) : super(const DeliveryState()) {
    on<_EditAddress>(_onEditAddress);
    on<_LoadAddress>(_onLoadAddress);
  }

  Future<void> _onEditAddress(
      _EditAddress event, Emitter<DeliveryState> emit,) async {
    try {
      emit(state.copyWith(statusSend: ButtonPushStatus.loading));

      final newAddress = {
        "city": event.city,
        "street": event.street,
        "house_number": event.house,
        "apartment_number": event.apartment,
        "entrance": event.entrance,
        "postal_code": event.zipCode,
      };
      await _profileRepository.sendProfileDataChange(newAddress);
      emit(state.copyWith(statusSend: ButtonPushStatus.success));
    } catch (e) {
      logger.e(e);
      emit(state.copyWith(
        statusSend: ButtonPushStatus.failure,
      ),);
    }
  }

  Future<void> _onLoadAddress(
      _LoadAddress event, Emitter<DeliveryState> emit,) async {
    try {
      final address = await _profileRepository.loadUserData();
      final initialAddress = state.initialAddress.copyWith(
        city: address.user.city,
        street: address.user.street,
        house: address.user.houseNumber,
        apartment: address.user.apartmentNumber,
        entrance: address.user.entrance,
        zipCode: address.user.postalCode,
      );
      emit(state.copyWith(initialAddress: initialAddress));
    } catch (e) {
      logger.e(e);
    }
  }
}
