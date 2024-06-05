import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/utils/enums/button_push.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/survey/data/survey_repository.dart';
import 'package:sempl/src/feature/survey/model/survey_model.dart';

part 'survey_event.dart';
part 'survey_state.dart';
part 'survey_bloc.freezed.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final SurveyRepository _surveyRepository;

  SurveyBloc(this._surveyRepository) : super(const SurveyState()) {
    on<_SetLogin>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            login: event.login,
          ),
        ),
      );
    });

    on<_SetPassword>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            password: event.password,
          ),
        ),
      );
    });

    on<_SetFirstName>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            firstName: event.firstName,
          ),
        ),
      );
    });

    on<_SetLastName>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            lastName: event.lastName,
          ),
        ),
      );
    });

    on<_SetGender>((event, emit) {
      final gender = switch (event.gender) {
        'Мужской' => 'male',
        'Женский' => 'female',
        _ => 'other',
      };

      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            gender: gender,
          ),
        ),
      );
      logger.i(state.surveyModel.gender);
    });

    on<_SetBirthdate>((event, emit) {
      final birthdate = event.birthdate.replaceAll('/', '-');
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            birthdate: birthdate,
          ),
        ),
      );
      logger.i(state.surveyModel.birthdate);
    });

    on<_SetAppName>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            appName: event.appName,
          ),
        ),
      );
    });

    on<_SetEmail>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            email: event.email,
          ),
        ),
      );
    });

    on<_SetAddress>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            address: event.address,
          ),
        ),
      );
    });

    on<_SetPeopleLivingWith>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            peopleLivingWith: int.tryParse(event.peopleLivingWith) ?? 9999,
          ),
        ),
      );
    });

    on<_SetHasChildren>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            hasChildren: event.hasChildren,
          ),
        ),
      );
    });

    on<_SetPets>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            pets: event.pets,
          ),
        ),
      );
    });

    on<_SetAverageMonthlyIncome>((event, emit) {
      final value = int.tryParse(
              event.averageMonthlyIncome.replaceAll(RegExp(r'[%\s]'), '')) ??
          9999;
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            averageMonthlyIncome:
                int.tryParse(event.averageMonthlyIncome) ?? 9999,
          ),
        ),
      );
    });

    on<_SetPercentageSpentOnCosmetics>((event, emit) {
      final value = int.tryParse(event.percentageSpentOnCosmetics
              .replaceAll(RegExp(r'[%\s]'), '')) ??
          9999;
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            percentageSpentOnCosmetics: value,
          ),
        ),
      );
    });

    on<_SetVkProfile>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            vkProfile: event.vkProfile,
          ),
        ),
      );
    });

    on<_SetTelegramProfile>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            telegramProfile: event.telegramProfile,
          ),
        ),
      );
    });

    on<_SetProfilePhoto>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            profilePhoto: event.profilePhoto,
          ),
        ),
      );
    });

    on<_SetDeliveryAddress>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            deliveryAddress: event.deliveryAddress,
          ),
        ),
      );
    });

    on<_SetCity>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            city: event.city,
          ),
        ),
      );
    });

    on<_SetStreet>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            street: event.street,
          ),
        ),
      );
    });

    on<_SetHouseNumber>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            houseNumber: event.houseNumber,
          ),
        ),
      );
    });

    on<_SetApartmentNumber>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            apartmentNumber: event.apartmentNumber,
          ),
        ),
      );
    });

    on<_SetEntrance>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            entrance: event.entrance,
          ),
        ),
      );
    });

    on<_SetPostalCode>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            postalCode: event.postalCode,
          ),
        ),
      );
    });

    on<_SetWantAdvertising>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            wantAdvertising: !state.surveyModel.wantAdvertising,
          ),
        ),
      );
    });

    on<_SetAcceptPolicy>((event, emit) {
      emit(
        state.copyWith(
          surveyModel: state.surveyModel.copyWith(
            acceptPolicy: event.acceptPolicy,
          ),
        ),
      );
    });

    on<_SendResultSurvey>(_onSendResultSurvey);
  }

  Future<void> _onSendResultSurvey(
      _SendResultSurvey event, Emitter<SurveyState> emit) async {
    if (state.status == ButtonPushStatus.loading) return;
    emit(state.copyWith(
      status: ButtonPushStatus.loading,
    ));

    try {
      final surveyJson = state.surveyModel.toJson();

      if (!kDebugMode) await _surveyRepository.sendResultSurvey(surveyJson);
      if (kDebugMode) logger.info(surveyJson);
    } catch (e) {
      emit(state.copyWith(
        status: ButtonPushStatus.failure,
      ));
    }
  }
}
